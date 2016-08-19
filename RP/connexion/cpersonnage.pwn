forward SelectionPersonnage(playerid);

forward CheckNomPersonnage(playerid);
forward CheckInfoDatePersonnage(playerid);

forward CreationPersoStep1(playerid);

public SelectionPersonnage(playerid)
{
	for(new i;i < 9;i++)
	{
		PlayerTextDrawHide(playerid, Verif_NDC[playerid][i]);
	}
	UnLoadTDVerifNDC(playerid);
	
	static
		req[69],
		req1[150];
		
	mysql_format(mysql,req,sizeof(req),"SELECT * FROM compte WHERE NomDeCompte = '%e'",ConnexionData[playerid][NomDeCompte]);
	mysql_tquery(mysql,req,"CheckNomPersonnage","i",playerid);
	 
	mysql_format(mysql,req1,sizeof(req1),"SELECT * FROM Personnage WHERE NomDeCompte = '%e'",ConnexionData[playerid][NomDeCompte]);
	mysql_tquery(mysql,req1,"CheckInfoDatePersonnage","i",playerid);
	return 1;
}
public CheckNomPersonnage(playerid)
{
  if(!cache_get_row_count()) return OnPlayerRequestClass(playerid, 0);
  else
  {
    cache_get_field_content(0,"Perso1",ConnexionData[playerid][nPerso1],.max_len=50);
    cache_get_field_content(0,"Perso2",ConnexionData[playerid][nPerso2],.max_len=50);
    cache_get_field_content(0,"Perso3",ConnexionData[playerid][nPerso3],.max_len=50);
  }
  return 1;
}
public CheckInfoDatePersonnage(playerid)
{
	//if(!cache_get_row_count()) return CreationPersoStep1(playerid);

	new row = cache_get_row_count();
	  
	for(new i;i < row;i++)
	{
		cache_get_field_content_int(i,"HeureDeJeu",PersoDateInfo[playerid][HeureDeJeu][i]);
		cache_get_field_content(i,"DernierConnexion",PersoDateInfo[playerid][DernierConnexion][i],.max_len=12);
	}
	return ChoixPersonnage(playerid);
}
public CreationPersoStep1(playerid)
{
	return 1;
}