#include <YSI\YSI\y_hooks>

DEFINE_HOOK_REPLACEMENT(OnPlayer, OP_);

forward ChoixPersonnage(playerid);

public ChoixPersonnage(playerid)
{
	load_std(playerid);
	show_std(playerid);
	
	if(strcmp(ConnexionData[playerid][nPerso1],"Emplacement Vide",true) != 0)
	{
		static
			hj[13], dc[12];
			
		PlayerTextDrawSetString(playerid, S_perso[8][playerid], "Utiliser");
		format(dc,sizeof(dc),"D.co:_%s",PersoDateInfo[playerid][DernierConnexion][0]);
		PlayerTextDrawSetString(playerid, S_perso[18][playerid], dc);
		
		format(hj,sizeof(hj),"H.jeux:_%dH",PersoDateInfo[playerid][HeureDeJeu][0]);
		PlayerTextDrawSetString(playerid, S_perso[19][playerid], hj);
		
		PlayerTextDrawSetString(playerid, S_perso[17][playerid], ConnexionData[playerid][nPerso1]);
		
		SelectTextDraw(playerid, 0xFF0000FF);
	}
	if(strcmp(ConnexionData[playerid][nPerso2],"Emplacement Vide",true) != 0)
	{
		static
			hj[13], dc[12];
			
		PlayerTextDrawSetString(playerid, S_perso[11][playerid], "Utiliser");
		format(dc,sizeof(dc),"D.co:_%s",PersoDateInfo[playerid][DernierConnexion][1]);
		PlayerTextDrawSetString(playerid, S_perso[22][playerid], dc);
		
		format(hj,sizeof(hj),"H.jeux:_%dH",PersoDateInfo[playerid][HeureDeJeu][1]);
		PlayerTextDrawSetString(playerid, S_perso[24][playerid], hj);
		
		PlayerTextDrawSetString(playerid, S_perso[20][playerid], ConnexionData[playerid][nPerso2]);
		
		SelectTextDraw(playerid, 0xFF0000FF);
	}
	if(strcmp(ConnexionData[playerid][nPerso3],"Emplacement Vide",true) != 0)
	{
		static
			hj[13], dc[12];
			
		PlayerTextDrawSetString(playerid, S_perso[12][playerid], "Utiliser");
		format(dc,sizeof(dc),"D.co:_%s",PersoDateInfo[playerid][DernierConnexion][2]);
		PlayerTextDrawSetString(playerid, S_perso[23][playerid], dc);
		
		format(hj,sizeof(hj),"H.jeux:_%dH",PersoDateInfo[playerid][HeureDeJeu][2]);
		PlayerTextDrawSetString(playerid, S_perso[25][playerid], hj);
		
		PlayerTextDrawSetString(playerid, S_perso[21][playerid], ConnexionData[playerid][nPerso3]);
		
		SelectTextDraw(playerid, 0xFF0000FF);
	}
	return 1;
}

hook OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(playertextid == S_perso[5][playerid])
	{
		SendClientMessage(playerid, -1, "Le personnage 1 a été choisie !");
		
		//if(strcmp(ConnexionData[playerid][nPerso1],"Emplacement Vide",true) == 0) return CreationPersonnage(playerid);
		if(strcmp(ConnexionData[playerid][nPerso1],"Emplacement Vide",true) == 0) return TogglePlayerSpectating(playerid, 0), SpawnPlayer(playerid), hide_std(playerid);
		else SpawnPlayer(playerid);
	}
	else if(playertextid == S_perso[6][playerid])
	{
		SendClientMessage(playerid, -1, "Le personnage 2 a été choisie !");
		
		if(strcmp(ConnexionData[playerid][nPerso2],"Emplacement Vide",true) == 0) return CreationPersonnage(playerid);
	}
	else if(playertextid == S_perso[7][playerid])
	{
		SendClientMessage(playerid, -1, "Le personnage 3 a été choisie !");
		
		if(strcmp(ConnexionData[playerid][nPerso3],"Emplacement Vide",true) == 0) return CreationPersonnage(playerid);
	}	
	return 1;
}

