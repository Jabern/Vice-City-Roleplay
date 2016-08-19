#include <YSI\YSI\y_hooks>

#include "..\RP\mysql.pwn"

new PlayerText:Verif_NDC[MAX_PLAYERS][10];
new
	NDC[MAX_PLAYERS][50];

forward LoadTDVerifNDC(playerid);
forward UnLoadTDVerifNDC(playerid);
forward VerifInscrit(playerid);
forward AffichTD(playerid);

public LoadTDVerifNDC(playerid)
{
	Verif_NDC[playerid][0] = CreatePlayerTextDraw(playerid, 275.200042, 2.337796, "Vice_City");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][0], 1.003600, 4.362666);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][0], 2);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][0], -16711681);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][0], 255);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][0], 3);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][0], 0);

	Verif_NDC[playerid][1] = CreatePlayerTextDraw(playerid, 303.999816, 40.666648, "RolePlay");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][1], 0.997199, 3.640888);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][1], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][1], 255);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][1], -1);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][1], 0);

	Verif_NDC[playerid][2] = CreatePlayerTextDraw(playerid, 161.600067, 97.911071, "box");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][2], 0.000000, 15.424036);
	PlayerTextDrawTextSize(playerid, Verif_NDC[playerid][2], 459.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][2], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, Verif_NDC[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, Verif_NDC[playerid][2], 86);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][2], -2139062017);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][2], 0);

	Verif_NDC[playerid][3] = CreatePlayerTextDraw(playerid, 164.800003, 98.408882, "Inscription:_Verifie_si_votre_nom_de_compte_est_disponible.");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][3], 0.216001, 1.600000);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][3], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][3], -2147450625);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][3], 255);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][3], 0);

	Verif_NDC[playerid][4] = CreatePlayerTextDraw(playerid, 173.200042, 133.751159, "Nom_de_compte_:");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][4], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][4], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][4], -2147450625);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][4], 255);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][4], 0);

	Verif_NDC[playerid][5] = CreatePlayerTextDraw(playerid, 192.399993, 157.644378, "box");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][5], 0.000000, 3.040004);
	PlayerTextDrawTextSize(playerid, Verif_NDC[playerid][5], 445.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][5], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][5], -1);
	PlayerTextDrawUseBox(playerid, Verif_NDC[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, Verif_NDC[playerid][5], -2139062151);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][5], 255);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][5], 0);

	Verif_NDC[playerid][6] = CreatePlayerTextDraw(playerid, 195.600067, 162.013168, "Cliquez_ici");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][6], 0.436999, 1.769999);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][6], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][6], 255);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][6], -1);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][6], 0);
	PlayerTextDrawSetSelectable(playerid, Verif_NDC[playerid][6], true);

	Verif_NDC[playerid][7] = CreatePlayerTextDraw(playerid, 172.000045, 188.966156, "Cliquez_sur_verifie_avant_de_remplire_les_autre_champs");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][7], 0.301001, 1.600000);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][7], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][7], 255);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][7], -1);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][7], 0);

	Verif_NDC[playerid][8] = CreatePlayerTextDraw(playerid, 399.600158, 211.902206, "box");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][8], 0.000000, 2.600004);
	PlayerTextDrawTextSize(playerid, Verif_NDC[playerid][8], 454.770294, 0.000000);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][8], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][8], -1);
	PlayerTextDrawUseBox(playerid, Verif_NDC[playerid][8], 1);
	PlayerTextDrawBoxColor(playerid, Verif_NDC[playerid][8], -2147450625);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][8], 255);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][8], 0);

	Verif_NDC[playerid][9] = CreatePlayerTextDraw(playerid, 402.000000, 214.800292, "Verifier");
	PlayerTextDrawLetterSize(playerid, Verif_NDC[playerid][9], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, Verif_NDC[playerid][9], 1);
	PlayerTextDrawColor(playerid, Verif_NDC[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, Verif_NDC[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, Verif_NDC[playerid][9], 255);
	PlayerTextDrawFont(playerid, Verif_NDC[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, Verif_NDC[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, Verif_NDC[playerid][9], 0);
	PlayerTextDrawSetSelectable(playerid, Verif_NDC[playerid][9], true);
	
	return 1;
}
public UnLoadTDVerifNDC(playerid)
{
	for(new i;i < 10;i++)
	{
	    PlayerTextDrawDestroy(playerid, PlayerText:Verif_NDC[playerid][i]);
	}
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	
	TogglePlayerSpectating(playerid, true);
	
	AffichTD(playerid);
	
	return 1;
}
public AffichTD(playerid)
{
	SelectTextDraw(playerid, 0xFF0000FF);
	
	LoadTDVerifNDC(playerid);
	
	for(new i;i < 10;i++)
	{
		PlayerTextDrawShow(playerid, Verif_NDC[playerid][i]);
	}
	return 1;
}
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(playertextid == Verif_NDC[playerid][6])
	{
	    ShowPlayerDialog(playerid, 0, DIALOG_STYLE_INPUT, "Entrée un nom de compte","Veuillez entrée votre nom de compte pour voir si vous êtes inscrit !","Validée","Retour");
	}
	if(playertextid == Verif_NDC[playerid][9])
	{
		if(strlen(NDC[playerid]) < 6) return SendClientMessage(playerid, 0xFF0000FF, "[Erreur] Vous devez entrée un nom d'utilisateur avec plus de 6 caractère !");
		static
			req[500];
			
		mysql_format(mysql,req,sizeof(req),"SELECT * FROM compte WHERE NomDeCompte = '%s'",NDC[playerid]);
		mysql_tquery(mysql,req,"VerifInscrit","i",playerid);
	}
	return 1;
}
public VerifInscrit(playerid)
{
	if(!cache_get_row_count())
	{
		PlayerTextDrawSetString(playerid, Verif_NDC[playerid][7],"Votre nom de compte n'est pas enregistrez veuillez patientez 2 secondes.");
		CancelSelectTextDraw(playerid);
		
		SetTimerEx("InscriptionStep1",2000,false,"i",playerid);
	}
	else
	{
		PlayerTextDrawSetString(playerid, Verif_NDC[playerid][7],"Votre nom de compte est enregistrez veuillez patientez 2 seconde.");
		CancelSelectTextDraw(playerid);
		
		SetTimerEx("Connexion",2000,false,"i",playerid);
	}
	return 1;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case 0:
		{
			static
				name[50];
			sscanf(inputtext,"s[150]",name);
			
			if(strlen(name) >= 50)
			{ShowPlayerDialog(playerid, 0, DIALOG_STYLE_INPUT, "Entrée un nom de compte","Veuillez entrée un nom de compte afin de vous identifier ou de créer un compte !\n\nIl ne peut pas dépasser les 150 caractère !","Validée","Retour");}
			else
			{
				format(NDC[playerid],50,"%s",name);
				PlayerTextDrawSetString(playerid, Verif_NDC[playerid][6],NDC[playerid]);
			}
			name = "";
		}
	}
	return 1;
}