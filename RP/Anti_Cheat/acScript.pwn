#include "..\RP\Personnage\pEnum.pwn"
#include "..\RP\Anti_Cheat\acConfig.pwn"
#include "..\RP\Arme_sys\armeEnum.pwn"
#include "..\RP\Anti_Cheat\acFunc.pwn"

#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

static
		a_muni[MAX_PLAYERS], n_muni[MAX_PLAYERS];
forward verification_munition(playerid);
		
hook OnPlayerUpdate(playerid)
{
	switch(ANTI_ARGENT_CHEAT)
	{
		case 1: // 1 = Anti Cheat actif
		{
			if(GetPlayerMoney(playerid) != JoueurInfo[playerid][Argent]) 
			{
				ResetPlayerMoney(playerid);
				ac_GivePlayerMoney(playerid, JoueurInfo[playerid][Argent]);
			}
		}
	}
	switch(ANTI_WEAPON_&_AMMO_CHEAT)
	{
		case 1: // 1 = Anti Cheat actif
		{
			for(new i; i< MAX_ARME_SLOT; i++) 
			{
				new
					arme[MAX_ARME_SLOT][2];
				
				GetPlayerWeaponData(playerid, i, arme[i][0], arme[i][1]);
				
				if(arme[i][0] != PlayerArmeInfo[playerid][armeId][i])
				{
					ResetPlayerWeapons(playerid);
				}
				if(arme[i][1] != PlayerArmeInfo[playerid][munition][i])
				{
					ac_SetPlayerAmmo(playerid, arme[i][0], 0);
				}
				return 1;
			}
		}
	}
	switch(ANTI_ARMUR_CHEAT)
	{
		case 1:
		{
			static
					Float:vie;
			GetPlayerHealth(playerid, vie);		
			
			if(vie != JoueurInfo[playerid][Vie])
			{
				ac_SetPlayerHealth(playerid, JoueurInfo[playerid][Vie]);
			}
		}
	}
	switch(ANTI_ARMUR_CHEAT)
	{
		case 1:
		{
			static
					Float:armure;
			GetPlayerArmour(playerid, armure);
			
			if(armure != JoueurInfo[playerid][Armure])
			{
				ac_SetPlayerArmour(playerid, JoueurInfo[playerid][Armure]);
			}
		}
	}
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	static
			p_stat[MAX_PLAYERS];
	p_stat[playerid] = GetPlayerState(playerid);
		
	if(PRESSED(KEY_FIRE))
	{
		if(p_stat[playerid] == PLAYER_STATE_ONFOOT)
		{
			if(AuneArme(playerid))
			{
				a_muni[playerid] = GetPlayerAmmo(playerid);
				SetTimerEx("verification_munition", 500, false, "i", playerid);
			}
		}		
	}		
	return 1;
}

public verification_munition(playerid)
{
	n_muni[playerid] = GetPlayerAmmo(playerid);
	if(n_muni[playerid] == a_muni[playerid])
	{
		Kick(playerid);
	}
	return 1;
}
