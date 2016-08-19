new PlayerText:S_perso[26][MAX_PLAYERS];

forward load_std(playerid);
forward unload_std(playerid);

forward show_std(playerid);
forward hide_std(playerid);

public load_std(playerid)
{
	S_perso[0][playerid] = CreatePlayerTextDraw(playerid, 130.500000, 92.400032, "LD_OTB2:backbet");
	PlayerTextDrawLetterSize(playerid, S_perso[0][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[0][playerid], 362.500000, 283.359924);
	PlayerTextDrawAlignment(playerid, S_perso[0][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[0][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[0][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[0][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[0][playerid], 4);

	S_perso[1][playerid] = CreatePlayerTextDraw(playerid, 177.950027, 115.696075, "Personnage");
	PlayerTextDrawLetterSize(playerid, S_perso[1][playerid], 0.480999, 1.963998);
	PlayerTextDrawAlignment(playerid, S_perso[1][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[1][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[1][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[1][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[1][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[1][playerid], 2);
	PlayerTextDrawSetProportional(playerid, S_perso[1][playerid], 1);

	S_perso[2][playerid] = CreatePlayerTextDraw(playerid, 327.150054, 153.371994, "usebox");
	PlayerTextDrawLetterSize(playerid, S_perso[2][playerid], 0.000000, 7.087777);
	PlayerTextDrawTextSize(playerid, S_perso[2][playerid], 164.149932, 0.000000);
	PlayerTextDrawAlignment(playerid, S_perso[2][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[2][playerid], 0);
	PlayerTextDrawUseBox(playerid, S_perso[2][playerid], true);
	PlayerTextDrawBoxColor(playerid, S_perso[2][playerid], 102);
	PlayerTextDrawSetShadow(playerid, S_perso[2][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[2][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[2][playerid], 0);

	S_perso[3][playerid] = CreatePlayerTextDraw(playerid, 327.999969, 224.427978, "usebox");
	PlayerTextDrawLetterSize(playerid, S_perso[3][playerid], 0.000000, 7.087777);
	PlayerTextDrawTextSize(playerid, S_perso[3][playerid], 163.999969, 0.000000);
	PlayerTextDrawAlignment(playerid, S_perso[3][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[3][playerid], 0);
	PlayerTextDrawUseBox(playerid, S_perso[3][playerid], true);
	PlayerTextDrawBoxColor(playerid, S_perso[3][playerid], 102);
	PlayerTextDrawSetShadow(playerid, S_perso[3][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[3][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[3][playerid], 0);

	S_perso[4][playerid] = CreatePlayerTextDraw(playerid, 328.550598, 295.427825, "usebox");
	PlayerTextDrawLetterSize(playerid, S_perso[4][playerid], 0.000000, 7.087777);
	PlayerTextDrawTextSize(playerid, S_perso[4][playerid], 163.549789, 0.000000);
	PlayerTextDrawAlignment(playerid, S_perso[4][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[4][playerid], 0);
	PlayerTextDrawUseBox(playerid, S_perso[4][playerid], true);
	PlayerTextDrawBoxColor(playerid, S_perso[4][playerid], 102);
	PlayerTextDrawSetShadow(playerid, S_perso[4][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[4][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[4][playerid], 0);

	S_perso[5][playerid] = CreatePlayerTextDraw(playerid, 366.900115, 136.472015, "LD_OTB2:butnB");
	PlayerTextDrawLetterSize(playerid, S_perso[5][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[5][playerid], 106.000000, 73.359992);
	PlayerTextDrawAlignment(playerid, S_perso[5][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[5][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[5][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[5][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[5][playerid], 4);
	PlayerTextDrawSetSelectable(playerid, S_perso[5][playerid], true);

	S_perso[6][playerid] = CreatePlayerTextDraw(playerid, 366.300170, 203.439819, "LD_OTB2:butnB");
	PlayerTextDrawLetterSize(playerid, S_perso[6][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[6][playerid], 106.000000, 73.359992);
	PlayerTextDrawAlignment(playerid, S_perso[6][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[6][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[6][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[6][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[6][playerid], 4);
	PlayerTextDrawSetSelectable(playerid, S_perso[6][playerid], true);

	S_perso[7][playerid] = CreatePlayerTextDraw(playerid, 366.300140, 276.399719, "LD_OTB2:butnB");
	PlayerTextDrawLetterSize(playerid, S_perso[7][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[7][playerid], 106.000000, 73.359992);
	PlayerTextDrawAlignment(playerid, S_perso[7][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[7][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[7][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[7][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[7][playerid], 4);
	PlayerTextDrawSetSelectable(playerid, S_perso[7][playerid], true);

	S_perso[8][playerid] = CreatePlayerTextDraw(playerid, 390.000091, 147.896026, "Vide");
	PlayerTextDrawLetterSize(playerid, S_perso[8][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[8][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[8][playerid], 255);
	PlayerTextDrawSetShadow(playerid, S_perso[8][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[8][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[8][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[8][playerid], 3);
	PlayerTextDrawSetProportional(playerid, S_perso[8][playerid], 1);

	S_perso[9][playerid] = CreatePlayerTextDraw(playerid, 337.800079, 137.480072, "LD_OTB2:Ric1");
	PlayerTextDrawLetterSize(playerid, S_perso[9][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[9][playerid], 34.500000, 38.080013);
	PlayerTextDrawAlignment(playerid, S_perso[9][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[9][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[9][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[9][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[9][playerid], 4);

	S_perso[10][playerid] = CreatePlayerTextDraw(playerid, 165.700210, 145.256042, "LD_OTB2:Ric1");
	PlayerTextDrawLetterSize(playerid, S_perso[10][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[10][playerid], 34.500000, 38.080013);
	PlayerTextDrawAlignment(playerid, S_perso[10][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[10][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[10][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[10][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[10][playerid], 4);

	S_perso[11][playerid] = CreatePlayerTextDraw(playerid, 403.800048, 215.143936, "Vide");
	PlayerTextDrawLetterSize(playerid, S_perso[11][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[11][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[11][playerid], 255);
	PlayerTextDrawSetShadow(playerid, S_perso[11][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[11][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[11][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[11][playerid], 3);
	PlayerTextDrawSetProportional(playerid, S_perso[11][playerid], 1);

	S_perso[12][playerid] = CreatePlayerTextDraw(playerid, 404.200195, 287.936096, "Vide");
	PlayerTextDrawLetterSize(playerid, S_perso[12][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[12][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[12][playerid], 255);
	PlayerTextDrawSetShadow(playerid, S_perso[12][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[12][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[12][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[12][playerid], 3);
	PlayerTextDrawSetProportional(playerid, S_perso[12][playerid], 1);

	S_perso[13][playerid] = CreatePlayerTextDraw(playerid, 165.400177, 217.039947, "LD_OTB2:Ric2");
	PlayerTextDrawLetterSize(playerid, S_perso[13][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[13][playerid], 34.500000, 38.080013);
	PlayerTextDrawAlignment(playerid, S_perso[13][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[13][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[13][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[13][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[13][playerid], 4);

	S_perso[14][playerid] = CreatePlayerTextDraw(playerid, 165.450134, 287.927795, "LD_OTB2:Ric3");
	PlayerTextDrawLetterSize(playerid, S_perso[14][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[14][playerid], 34.500000, 38.080013);
	PlayerTextDrawAlignment(playerid, S_perso[14][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[14][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[14][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[14][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[14][playerid], 4);

	S_perso[15][playerid] = CreatePlayerTextDraw(playerid, 337.750152, 204.543914, "LD_OTB2:Ric2");
	PlayerTextDrawLetterSize(playerid, S_perso[15][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[15][playerid], 34.500000, 38.080013);
	PlayerTextDrawAlignment(playerid, S_perso[15][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[15][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[15][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[15][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[15][playerid], 4);

	S_perso[16][playerid] = CreatePlayerTextDraw(playerid, 337.850128, 277.783813, "LD_OTB2:Ric3");
	PlayerTextDrawLetterSize(playerid, S_perso[16][playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, S_perso[16][playerid], 34.500000, 38.080013);
	PlayerTextDrawAlignment(playerid, S_perso[16][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[16][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[16][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[16][playerid], 0);
	PlayerTextDrawFont(playerid, S_perso[16][playerid], 4);

	S_perso[17][playerid] = CreatePlayerTextDraw(playerid, 212.199981, 154.223999, "N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[17][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[17][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[17][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[17][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[17][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[17][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[17][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[17][playerid], 1);

	S_perso[18][playerid] = CreatePlayerTextDraw(playerid, 172.700012, 174.608062, "D.co:_N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[18][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[18][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[18][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[18][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[18][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[18][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[18][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[18][playerid], 1);

	S_perso[19][playerid] = CreatePlayerTextDraw(playerid, 172.849945, 191.063995, "H.jeux:_N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[19][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[19][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[19][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[19][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[19][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[19][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[19][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[19][playerid], 1);

	S_perso[20][playerid] = CreatePlayerTextDraw(playerid, 213.300003, 228.871932, "N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[20][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[20][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[20][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[20][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[20][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[20][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[20][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[20][playerid], 1);

	S_perso[21][playerid] = CreatePlayerTextDraw(playerid, 213.249984, 301.103851, "N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[21][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[21][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[21][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[21][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[21][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[21][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[21][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[21][playerid], 1);

	S_perso[22][playerid] = CreatePlayerTextDraw(playerid, 172.849960, 246.784149, "D.co:_N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[22][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[22][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[22][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[22][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[22][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[22][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[22][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[22][playerid], 1);

	S_perso[23][playerid] = CreatePlayerTextDraw(playerid, 172.899749, 318.456146, "D.co:_N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[23][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[23][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[23][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[23][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[23][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[23][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[23][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[23][playerid], 1);

	S_perso[24][playerid] = CreatePlayerTextDraw(playerid, 173.049972, 262.791900, "H.jeux:_N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[24][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[24][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[24][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[24][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[24][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[24][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[24][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[24][playerid], 1);

	S_perso[25][playerid] = CreatePlayerTextDraw(playerid, 172.799896, 336.479949, "H.jeux:_N/A");
	PlayerTextDrawLetterSize(playerid, S_perso[25][playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, S_perso[25][playerid], 1);
	PlayerTextDrawColor(playerid, S_perso[25][playerid], -1);
	PlayerTextDrawSetShadow(playerid, S_perso[25][playerid], 0);
	PlayerTextDrawSetOutline(playerid, S_perso[25][playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, S_perso[25][playerid], 51);
	PlayerTextDrawFont(playerid, S_perso[25][playerid], 1);
	PlayerTextDrawSetProportional(playerid, S_perso[25][playerid], 1);
	
	return 1;
}

public unload_std(playerid)
{
	for(new i; i < 26; i++)
	{
		PlayerTextDrawDestroy(playerid, PlayerText:S_perso[i][playerid]);
	}
	return 1;
}

public show_std(playerid)
{
	SelectTextDraw(playerid, 0xFF0000FF);
	
	load_std(playerid);
	
	for(new i;i < 26;i++)
	{
		PlayerTextDrawShow(playerid, PlayerText:S_perso[i][playerid]);
	}
	return 1;
}

public hide_std(playerid)
{
	for(new i;i < 26;i++)
	{
		PlayerTextDrawHide(playerid, PlayerText:S_perso[i][playerid]);
	}
	unload_std(playerid);
	return 1;
}

