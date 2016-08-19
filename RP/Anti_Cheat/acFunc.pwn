#include "..\RP\Arme_sys\armeEnum.pwn"
#include "..\RP\Personnage\pEnum.pwn"
#include "..\RP\Arme_sys\armeEnum.pwn"

// Fonction de l'anti cheat 

stock ac_GivePlayerMoney(playerid, montant)
{
	JoueurInfo[playerid][Argent] += montant;
	return GivePlayerMoney(playerid, montant);
}

stock ac_SetPlayerMoney(playerid, montant)
{
	JoueurInfo[playerid][Argent] = montant;
	ResetPlayerMoney(playerid);
	return GivePlayerMoney(playerid, montant);
}

stock ac_GivePlayerWeapon(playerid, armeid, muni, slot)
{
	PlayerArmeInfo[playerid][armeId][slot] = armeid;
	PlayerArmeInfo[playerid][munition][slot] = muni;
	return GivePlayerWeapon(playerid, armeid, muni);
}

stock ac_SetPlayerAmmo(playerid,  arme, montant)
{
	SetPlayerAmmo(playerid, arme, montant);
	for(new i; i < MAX_ARME_SLOT; i++)
	{
		PlayerArmeInfo[playerid][munition][i] = montant;
	}
	return 1;
}

stock ac_SetPlayerHealth(playerid, Float:montant)
{
	if(montant > 99.0) montant = 99.0;
	if(montant < 0.0) montant = 0.0;
	
	JoueurInfo[playerid][Vie] = montant;
	return SetPlayerHealth(playerid, montant);
}

stock ac_SetPlayerArmour(playerid, Float:montant)
{
	if(montant > 99.0) montant = 99.0;
	if(montant < 0.0) montant = 0.0;
	
	JoueurInfo[playerid][Armure] = montant;
	return SetPlayerArmour(playerid, montant);
}
#if !defined GetPlayerSpeed

	stock GetPlayerSpeed(playerid,bool:kmh)
	{
	  new Float:Vx,Float:Vy,Float:Vz,Float:rtn;
	  if(IsPlayerInAnyVehicle(playerid)) GetVehicleVelocity(GetPlayerVehicleID(playerid),Vx,Vy,Vz); else GetPlayerVelocity(playerid,Vx,Vy,Vz);
	  rtn = floatsqroot(floatabs(floatpower(Vx + Vy + Vz,2)));
	  return kmh?floatround(rtn * 100 * 1.61):floatround(rtn * 100);
	}

#endif	

// Fonction utile pour script

stock AuneArme(playerid)
{
   switch(GetPlayerWeapon(playerid))
   {
      case 16..18,22..39,41,42: return true;
      default: return false;
   }
   return 1;
}
