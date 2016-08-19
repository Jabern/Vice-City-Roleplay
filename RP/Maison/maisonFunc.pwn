#include "..\RP\mysql.pwn"

stock CreaMaison(playerid , maisonId, prix, interieurid)
{
	static
		hquery[1500];

	new Float:MaisonPos[3], string[128], vw, int, location[28];
	GetPlayerPos(playerid , MaisonPos[0], MaisonPos[1], MaisonPos[2]);

	vw  = GetPlayerVirtualWorld(playerid);
	int = GetPlayerInterior(playerid);
	Get2DZone(location, 28, HouseData[maisonId][OX], HouseData[maisonId][OY], HouseData[maisonId][OZ]);
	
	HouseData[maisonId][OX] = MaisonPos[0];
	HouseData[maisonId][OY] = MaisonPos[1];
	HouseData[maisonId][OZ] = MaisonPos[2];
	HouseData[maisonId][InteriorID] = int;
	HouseData[maisonId][World] = vw;
	HouseData[maisonId][Prix] = prix;
	HouseData[maisonId][Acheter] = 0;

	mysql_format(mysql,hquery, sizeof(hquery), "INSERT INTO `maison` (maisonida) VALUES ('%i')", maisonId);
	mysql_tquery(mysql, hquery);

	format(HouseData[maisonId][Proprio], 25, "Gouvernement");
	HouseData[maisonId][EnterPickup] = CreateDynamicPickup(1273, 23,HouseData[maisonId][OX], HouseData[maisonId][OY], HouseData[maisonId][OZ], HouseData[maisonId][World]);
	format(string, sizeof(string), "Maison\nA vendre pour: {FFFFFF}%d${F5DEB3}.\n{FFFFFF}Addresse:{F5DEB3}%d %s\nUtilisez /amaison pour acheter cette maison", HouseData[maisonId][Prix], maisonId, location);

	HouseData[maisonId][Label] = Create3DTextLabel(string, -1, HouseData[maisonId][OX], HouseData[maisonId][OY], HouseData[maisonId][OZ] + 0.5, 10,  HouseData[maisonId][World]);
	SetHouseInterior(maisonId, interieurid);
	SaveHouse(maisonId);
}

stock SetHouseInterior(houseID, interieur)
{
	switch(interieur)
	{
		case 1:
		{
			HouseData[houseID][IX] = 266.5256;
			HouseData[houseID][IY] = 305.0071;
			HouseData[houseID][IZ] = 999.1484;
			HouseData[houseID][World] = houseID;
			HouseData[houseID][Iint] = 1;
		}
	}
}
stock SaveHouse(houseid)
{
	if(HouseData[houseid][Iint] == 0) return 1;

	static
	    hquery[1500];

	mysql_format(mysql, hquery,sizeof(hquery), "UPDATE maison SET proprio = '%s', acheter = '%d', fermer = '%d', interiorid = '%d', world = '%d', prix = '%d', OX = '%f', OY = '%f', OZ = '%f', \
	                                            IX = '%f', IY = '%f', IZ = '%f', iint= '%d' WHERE maisonida = '%i'",HouseData[houseid][Proprio],HouseData[houseid][Acheter], HouseData[houseid][Fermer],
	                                            HouseData[houseid][InteriorID],HouseData[houseid][World],HouseData[houseid][Prix],HouseData[houseid][OX],HouseData[houseid][OY],HouseData[houseid][OZ],
	                                            HouseData[houseid][IX],HouseData[houseid][IY],HouseData[houseid][IZ],HouseData[houseid][Iint],houseid);

	mysql_tquery(mysql, hquery);
	return 1;
}
stock LoadHouse()
{
	if(!cache_get_row_count()) return print("[Maison] Aucune maison!");

	new row = cache_get_row_count();

	for(new i;i < row;i++)
	{
		HouseData[i][ID] = cache_get_field_content_int(i,"maisonida");
		HouseData[i][Proprio] = cache_get_field_content_int(i,"proprio");
		HouseData[i][Acheter] = cache_get_field_content_int(i,"acheter");
		HouseData[i][Fermer] = cache_get_field_content_int(i,"fermer");

		HouseData[i][InteriorID] = cache_get_field_content_int(i,"interiorid");
		HouseData[i][World] = cache_get_field_content_int(i,"world");
		HouseData[i][Prix] = cache_get_field_content_int(i,"prix");

		HouseData[i][OX] = cache_get_field_content_float(i,"OX");
		HouseData[i][OY] = cache_get_field_content_float(i,"OY");
		HouseData[i][OZ] = cache_get_field_content_float(i,"OZ");
		HouseData[i][IX] = cache_get_field_content_float(i,"IX");
		HouseData[i][IY] = cache_get_field_content_float(i,"IY");
		HouseData[i][IZ] = cache_get_field_content_float(i,"IZ");

		HouseData[i][Iint] = cache_get_field_content_int(i,"iint");
	}

	printf("[Maison] Il y a %i/100 Maison !",row);
	return 1;
}
stock LoadHousePickup ()
{
	new row = cache_get_row_count();

	for(new houseID;houseID < row;houseID++)
	{
		DestroyDynamic3DTextLabel(HouseData[houseID][Label]);
		DestroyDynamicPickup(HouseData[houseID][EnterPickup]);	
		new string[168], housepickup, location[28];
		Get2DZone(location, 28, HouseData[houseID][OX], HouseData[houseID][OY], HouseData[houseID][OZ]);
		switch(HouseData[houseID][Acheter])
		{
			case 0:
			{
				housepickup = 1273;
				format(string, sizeof(string), "Maison\nA vendre pour: {FFFFFF}%d${F5DEB3}.\n{FFFFFF}Addresse:{F5DEB3}%d %s\nUtilisez /amaison pour acheter cette maison", HouseData[houseID][Prix], houseID, location);
			}
			case 1:
			{
				housepickup = 1272;
				format(string, sizeof(string), "Maison\nProprietaire: {FFFFFF}%s{F5DEB3}\nAddresse: {FFFFFF}%d %s{F5DEB3}\nAppuyez sur {FFFFFF}F/Touche Entrer{F5DEB3} pour entrer.", HouseData[houseID][Proprio], houseID, location);
			}
		}
		CreateDynamicPickup(housepickup, 23,HouseData[houseID][OX], HouseData[houseID][OY], HouseData[houseID][OZ], HouseData[houseID][World]);
		Create3DTextLabel(string, -1, HouseData[houseID][OX], HouseData[houseID][OY], HouseData[houseID][OZ] + 0.5, 10,  HouseData[houseID][World]);
	}
	return 1;
}