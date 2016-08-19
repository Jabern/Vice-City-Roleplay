forward CreationPersonnage(playerid);
forward CreationPersonnageStep2(playerid);


static
	Mute[MAX_PLAYERS] = 0;

public CreationPersonnage(playerid)
{
	ShowPlayerDialog(playerid, 5, DIALOG_STYLE_INPUT, "Nom du personnage","Veuillez choisir le nom de votre personnage !\nAttention : Uniquement le nom le prénom sera a choisir dans une etape futur.","Validée","Retour");
	
	hide_std(playerid);
	unload_std(playerid);
	return 1;
}
public CreationPersonnageStep2(playerid)
{
	LoadTDCreationPerso(playerid);
	show_crea(playerid);
	
	PlayerTextDrawSetString(playerid, TD_InsCreaProfil[playerid][12], JoueurInfo[playerid][NomPrenom]);
	SelectTextDraw(playerid, 0xFF0000FF);
	
	
	for(new i;i < 50;i++)
	{
		SendClientMessage(playerid,-1,"");
	}
	Mute[playerid] = 1;
	
	
	
	return 1;
}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case 5:
		{
			sscanf(inputtext,"s[25]",JoueurInfo[playerid][Nom]);
			
			if(strlen(JoueurInfo[playerid][Nom]) < 4) return ShowPlayerDialog(playerid, 5, DIALOG_STYLE_INPUT, "Nom du personnage","Veuillez choisir le nom de votre personnage !\nAttention : Uniquement le nom le prénom sera a choisir dans une etape futur.\n\nIl doit contenir plus de 4 caractère !","Validée","Retour");
			
			ShowPlayerDialog(playerid, 6, DIALOG_STYLE_INPUT, "Prenom du personnage","Veuillez choisir le nom de votre personnage !","Validée","Suivant");
		}
		case 6:
		{
			sscanf(inputtext,"s[25]",JoueurInfo[playerid][Prenom]);
			
			if(strlen(JoueurInfo[playerid][Prenom]) < 4) return ShowPlayerDialog(playerid, 6, DIALOG_STYLE_INPUT, "Prenom du personnage","Veuillez choisir le nom de votre personnage !\n\nIl doit faire plus de 4 caractère !","Validée","Suivant");
			
			format(JoueurInfo[playerid][NomPrenom],50,"%s_%s",JoueurInfo[playerid][Prenom],JoueurInfo[playerid][Nom]);
			SetPlayerName(playerid, JoueurInfo[playerid][NomPrenom]);
			
			static
				str[200];
				
			format(str,sizeof(str),"Vous avez choisie de vous appeler : %s\nVous validez ?",JoueurInfo[playerid][NomPrenom]);
			ShowPlayerDialog(playerid,7,DIALOG_STYLE_MSGBOX,"Vous validez ?",str,"Suivant","Modifier");
		}
		case 7:
		{
			if(!response) ShowPlayerDialog(playerid, 5, DIALOG_STYLE_INPUT, "Nom du personnage","Veuillez choisir le nom de votre personnage !\nAttention : Uniquement le nom le prénom sera a choisir dans une etape futur.","Validée","Retour");
		
			else CreationPersonnageStep2(playerid);
		}
	}
	return 1;
}
public OnPlayerText(playerid, text[])
{
	if(Mute[playerid] == 1) return 0;
	
	return 0;
	
}
hook OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	if(playertextid == TD_InsCreaProfil[playerid][16])
	{
		if(JoueurInfo[playerid][Taille] == 0) JoueurInfo[playerid][Taille] = 160;
		
		if(JoueurInfo[playerid][Taille] == 120) JoueurInfo[playerid][Taille] = 200;
		else JoueurInfo[playerid][Taille] --;
		
		static
			str[6];
			
		format(str,sizeof(str),"%dcm",JoueurInfo[playerid][Taille]);
		PlayerTextDrawSetString(playerid, TD_InsCreaProfil[playerid][18], str);
	}
	if(playertextid == TD_InsCreaProfil[playerid][17])
	{
		if(JoueurInfo[playerid][Taille] == 0) JoueurInfo[playerid][Taille] = 160;
		
		if(JoueurInfo[playerid][Taille] == 200) JoueurInfo[playerid][Taille] = 120;
		else JoueurInfo[playerid][Taille] ++;
		
		static
			str[6];
			
		format(str,sizeof(str),"%dcm",JoueurInfo[playerid][Taille]);
		PlayerTextDrawSetString(playerid, TD_InsCreaProfil[playerid][18], str);
	}
	if(playertextid == TD_InsCreaProfil[playerid][22])
	{
		if(JoueurInfo[playerid][Poids] == 0) JoueurInfo[playerid][Poids] = 80;
		
		if(JoueurInfo[playerid][Poids] == 50) JoueurInfo[playerid][Poids] = 120;
		else JoueurInfo[playerid][Poids] --;
		
		static
			str[6];
			
		format(str,sizeof(str),"%dKg",JoueurInfo[playerid][Poids]);
		PlayerTextDrawSetString(playerid, TD_InsCreaProfil[playerid][24], str);
	}
	if(playertextid == TD_InsCreaProfil[playerid][23])
	{
		if(JoueurInfo[playerid][Poids] == 0) JoueurInfo[playerid][Poids] = 80;
		
		if(JoueurInfo[playerid][Poids] == 120) JoueurInfo[playerid][Poids] = 50;
		else JoueurInfo[playerid][Poids] ++;
		
		static
			str[6];
			
		format(str,sizeof(str),"%dKg",JoueurInfo[playerid][Poids]);
		PlayerTextDrawSetString(playerid, TD_InsCreaProfil[playerid][24], str);
	}
	if(playertextid == TD_InsCreaProfil[playerid][28] || playertextid == TD_InsCreaProfil[playerid][29])
	{
		if(JoueurInfo[playerid][Sexe] == 0) JoueurInfo[playerid][Sexe] = 1;
		else JoueurInfo[playerid][Sexe] = 0;
		
		static
			str[6];
			
		switch(JoueurInfo[playerid][Sexe])
		{
			case 0:format(str,sizeof(str),"Homme");
			case 1:format(str,sizeof(str),"Femme");
		}
		
		PlayerTextDrawSetString(playerid, TD_InsCreaProfil[playerid][30], str);
	}
	return 1;
}