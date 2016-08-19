forward Connexion(playerid);
forward CheckMDP(playerid);
hook OnGameModeInit()
{
	print("Include de connexion load");
	return 1;
}
public Connexion(playerid)
{
	ShowPlayerDialog(playerid, 3, DIALOG_STYLE_PASSWORD, "Connexion","Veuillez vous connectez afin de pouvoir spawn !","Validée","Retour");
	
	format(ConnexionData[playerid][NomDeCompte],50,"%s",NDC[playerid]);
	
	static
		req[69];
		
	mysql_format(mysql,req,sizeof(req),"SELECT * FROM compte WHERE NomDeCompte = '%e'",ConnexionData[playerid][NomDeCompte]);
	mysql_tquery(mysql,req,"CheckMDP","i",playerid);
	return 1;
}
public CheckMDP(playerid)
{
	cache_get_field_content(0,"MotDePass",ConnexionData[playerid][MotDePass], .max_len=150);
	return 1;
}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case 3:
		{
			static
				MDP[150];
				
			sscanf(inputtext,"s[150]",MDP);
			
			if(strlen(MDP) < 6) return ShowPlayerDialog(playerid, 3, DIALOG_STYLE_PASSWORD, "Connexion","Veuillez vous connectez afin de pouvoir spawn !","Validée","Retour");
			
			if(strcmp(MDP,ConnexionData[playerid][MotDePass],true) == 0)
			{
				SelectionPersonnage(playerid);
			}
			else{ShowPlayerDialog(playerid, 3, DIALOG_STYLE_PASSWORD, "Connexion","Mot depasse incorrect veuillez réessayer !","Validée","Retour");}
		}
	}
	return 1;
}
