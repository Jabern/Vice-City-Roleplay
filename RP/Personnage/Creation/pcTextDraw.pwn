forward LoadTDCreationPerso(playerid);
forward UnLoadTDCreation(playerid);

forward show_crea(playerid);
forward hide_crea(playerid);


//---------------------- Fonctions ----------------------

stock convertisseur_encodage(string[])
{
    static
		normal[22] = {192, 199, 200, 201, 202, 203, 207, 217, 219, 220, 224, 226, 231, 232, 233, 234, 235, 238, 239, 249, 251, 252},
		converti[22] = {128, 133, 134, 135, 136, 137, 141, 146, 148, 149, 151, 153, 156, 157, 158, 159, 160, 163, 164, 169, 171, 172};

    for (new i; i < strlen(string); i++)
	{
        for(new j; j < 22; j++)
		{
            if(string[i] == normal[j])
			{
                string[i] = converti[j];
                break;
            }
        }
    }
}

stock PlayerText:CPTD(playerid, Float:x, Float:y, fmat[], va_args<>)
{
	static
		str[1025];

	va_format(str, sizeof (str), fmat, va_start<4>);
	convertisseur_encodage(str);
	return CreatePlayerTextDraw(playerid, x, y, str);
}


//---------------------- Variables ----------------------

  	new
		PlayerText:TD_InsCreaProfil[MAX_PLAYERS][49];
	 	
//---------------------- TextDraw ----------------------

public LoadTDCreationPerso(playerid)
{		
	TD_InsCreaProfil[playerid][0] = CPTD(playerid,85.000000, 0.000000, "~n~");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][0], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][0], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][0], 0.500000, 50.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][0], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][0], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][0], 0.000000, 170.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][0], 0);

	TD_InsCreaProfil[playerid][1] = CPTD(playerid,555.000000, 0.000000, "~n~");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][1], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][1], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][1], 0.500000, 50.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][1], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][1], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][1], 0.000000, 170.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][1], 0);

	TD_InsCreaProfil[playerid][2] = CPTD(playerid,90.000000, 430.000000, "LD_BEAT:chit");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][2], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][2], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][2], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][2], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][2], 151587327);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][2], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][2], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][2], 460.000000, 40.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][2], 0);

	TD_InsCreaProfil[playerid][3] = CPTD(playerid,555.000000, 11.000000, "~n~");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][3], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][3], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][3], 0.500000, 2.100000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][3], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][3], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][3], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][3], 0);

	TD_InsCreaProfil[playerid][4] = CPTD(playerid,87.000000, 11.000000, "~n~");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][4], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][4], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][4], 0.500000, 2.100000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][4], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][4], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][4], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][4], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][4], 0);

	TD_InsCreaProfil[playerid][5] = CPTD(playerid,87.000000, 13.000000, "~n~");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][5], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][5], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][5], 0.500000, 1.700000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][5], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][5], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][5], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][5], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][5], 0);

	TD_InsCreaProfil[playerid][6] = CPTD(playerid,57.000000, 10.000000, "Physique");
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][6], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][6], 2);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][6], 0.300000, 2.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][6], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][6], 0);

	TD_InsCreaProfil[playerid][7] = CPTD(playerid,555.000000, 13.000000, "~n~");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][7], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][7], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][7], 0.500000, 1.700000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][7], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][7], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][7], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][7], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][7], 0);

	TD_InsCreaProfil[playerid][8] = CPTD(playerid,509.000000, 10.000000, "Informations");
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][8], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][8], 0.300000, 2.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][8], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][8], 0);

	TD_InsCreaProfil[playerid][9] = CPTD(playerid,170.000000, -6.000000, "ld_poke:cd10c");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][9], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][9], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][9], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][9], 0.600000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][9], 255);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][9], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][9], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][9], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][9], 300.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][9], 0);

	TD_InsCreaProfil[playerid][10] = CPTD(playerid,170.000000, 49.000000, "ld_none:light");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][10], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][10], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][10], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][10], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][10], 255);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][10], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][10], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][10], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][10], 25.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][10], 0);

	TD_InsCreaProfil[playerid][11] = CPTD(playerid,445.000000, 49.000000, "ld_none:light");
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][11], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][11], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][11], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][11], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][11], 255);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][11], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][11], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][11], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][11], 25.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][11], 0);

	TD_InsCreaProfil[playerid][12] = CPTD(playerid,319.000000, 20.000000, JoueurInfo[playerid][NomPrenom]); // Nom du joueur
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][12], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][12], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][12], 0);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][12], 0.600000, 2.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][12], 188244479);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][12], 0);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][12], 0);

 	TD_InsCreaProfil[playerid][13] = CPTD(playerid,87.000000, 73.000000, "~n~"); // 1 - Taille - Contour noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][13], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][13], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][13], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][13], 0.500000, 1.800000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][13], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][13], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][13], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][13], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][13], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][13], 0);

	TD_InsCreaProfil[playerid][14] = CPTD(playerid,87.000000, 74.000000, "~n~"); // 1 - Taille - Relief gris
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][14], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][14], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][14], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][14], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][14], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][14], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][14], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][14], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][14], 0.000000, 99.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][14], 0);

	TD_InsCreaProfil[playerid][15] = CPTD(playerid,87.000000, 74.900001, "~n~"); // 1 - Taille - Fonds noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][15], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][15], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][15], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][15], 0.500000, 1.399999);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][15], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][15], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][15], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][15], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][15], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][15], 0);

	TD_InsCreaProfil[playerid][16] = CPTD(playerid,15.000000, 74.000000, "LD_BEAT:left"); // 1 - Taille - Flèche gauche
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][16], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][16], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][16], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][16], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][16], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][16], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][16], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][16], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][16], 1);

	TD_InsCreaProfil[playerid][17] = CPTD(playerid,145.000000, 74.000000, "LD_BEAT:right"); // 1 - Taille - Flèche droite
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][17], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][17], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][17], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][17], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][17], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][17], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][17], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][17], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][17], 1);

	TD_InsCreaProfil[playerid][18] = CPTD(playerid,87.000000, 76.000000, "TAILLE"); // 1 - Taille - Titre
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][18], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][18], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][18], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][18], 0.400000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][18], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][18], 0);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][18], 0);

	TD_InsCreaProfil[playerid][19] = CPTD(playerid,87.000000, 113.000000, "~n~"); // 2 - Poids - Contour noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][19], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][19], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][19], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][19], 0.500000, 1.799998);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][19], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][19], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][19], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][19], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][19], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][19], 0);

	TD_InsCreaProfil[playerid][20] = CPTD(playerid,87.000000, 114.000000, "~n~"); // 2 - Poids - Relief gris
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][20], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][20], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][20], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][20], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][20], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][20], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][20], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][20], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][20], 0.000000, 99.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][20], 0);

	TD_InsCreaProfil[playerid][21] = CPTD(playerid,87.000000, 114.899993, "~n~"); // 2 - Poids - Fonds noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][21], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][21], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][21], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][21], 0.500000, 1.399999);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][21], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][21], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][21], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][21], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][21], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][21], 0);

	TD_InsCreaProfil[playerid][22] = CPTD(playerid,15.000000, 114.000000, "LD_BEAT:left"); // 2 - Poids - Flèche gauche
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][22], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][22], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][22], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][22], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][22], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][22], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][22], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][22], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][22], 1);

	TD_InsCreaProfil[playerid][23] = CPTD(playerid,145.000000, 114.000000, "LD_BEAT:right"); // 2 - Poids - Flèche droite
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][23], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][23], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][23], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][23], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][23], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][23], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][23], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][23], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][23], 1);

	TD_InsCreaProfil[playerid][24] = CPTD(playerid,87.000000, 116.000000, "POIDS"); // 2 - Poids - Titre
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][24], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][24], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][24], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][24], 0.400000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][24], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][24], 0);

	TD_InsCreaProfil[playerid][25] = CPTD(playerid,87.000000, 153.000000, "~n~"); // 3 - Sexe - Contour noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][25], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][25], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][25], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][25], 0.500000, 1.799998);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][25], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][25], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][25], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][25], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][25], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][25], 0);

	TD_InsCreaProfil[playerid][26] = CPTD(playerid,87.000000, 154.000000, "~n~");  // 3 - Sexe - Relief gris
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][26], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][26], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][26], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][26], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][26], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][26], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][26], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][26], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][26], 0.000000, 99.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][26], 0);

	TD_InsCreaProfil[playerid][27] = CPTD(playerid,87.000000, 154.899993, "~n~"); // 3 - Sexe - Fonds noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][27], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][27], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][27], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][27], 0.500000, 1.399999);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][27], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][27], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][27], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][27], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][27], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][27], 0);

	TD_InsCreaProfil[playerid][28] = CPTD(playerid,15.000000, 154.000000, "LD_BEAT:left"); // 3 - Sexe - Flèche gauche
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][28], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][28], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][28], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][28], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][28], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][28], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][28], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][28], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][28], 1);

	TD_InsCreaProfil[playerid][29] = CPTD(playerid,145.000000, 154.000000, "LD_BEAT:right"); // 3 - Sexe - Flèche droite
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][29], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][29], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][29], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][29], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][29], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][29], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][29], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][29], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][29], 1);

	TD_InsCreaProfil[playerid][30] = CPTD(playerid,87.000000, 156.000000, "SEXE"); // 3 - Sexe - Titre
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][30], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][30], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][30], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][30], 0.400000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][30], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][30], 1);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][30], 0);

	TD_InsCreaProfil[playerid][31] = CPTD(playerid,553.000000, 73.000000, "~n~"); // 5 - Age - Contour noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][31], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][31], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][31], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][31], 0.500000, 1.799998);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][31], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][31], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][31], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][31], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][31], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][31], 0);

	TD_InsCreaProfil[playerid][32] = CPTD(playerid,553.000000, 74.000000, "~n~"); // 5 - Age - Relief gris
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][32], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][32], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][32], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][32], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][32], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][32], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][32], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][32], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][32], 0.000000, 99.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][32], 0);

	TD_InsCreaProfil[playerid][33] = CPTD(playerid,553.000000, 74.899993, "~n~"); // 5 - Age - Fonds noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][33], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][33], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][33], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][33], 0.500000, 1.399999);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][33], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][33], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][33], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][33], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][33], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][33], 0);

	TD_InsCreaProfil[playerid][34] = CPTD(playerid,480.000000, 74.000000, "LD_BEAT:left"); // 5 - Age - Flèche gauche
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][34], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][34], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][34], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][34], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][34], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][34], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][34], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][34], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][34], 1);

	TD_InsCreaProfil[playerid][35] = CPTD(playerid,611.000000, 74.000000, "LD_BEAT:right"); // 5 - Age - Flèche droite
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][35], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][35], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][35], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][35], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][35], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][35], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][35], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][35], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][35], 1);

	TD_InsCreaProfil[playerid][36] = CPTD(playerid,552.000000, 76.000000, "AGE"); // 5 - Age - Titre
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][36], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][36], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][36], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][36], 0.400000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][36], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][36], 1);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][36], 0);
	
	TD_InsCreaProfil[playerid][37] = CPTD(playerid,553.000000, 113.000000, "~n~"); // 6 - Nationalité - Contour noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][37], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][37], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][37], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][37], 0.500000, 1.799998);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][37], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][37], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][37], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][37], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][37], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][37], 0);

	TD_InsCreaProfil[playerid][38] = CPTD(playerid,553.000000, 114.000000, "~n~"); // 6 - Nationalité - Relief gris
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][38], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][38], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][38], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][38], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][38], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][38], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][38], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][38], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][38], 0.000000, 99.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][38], 0);

	TD_InsCreaProfil[playerid][39] = CPTD(playerid,553.000000, 114.899993, "~n~"); // 6 - Nationalité - Fonds noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][39], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][39], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][39], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][39], 0.500000, 1.399999);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][39], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][39], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][39], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][39], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][39], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][39], 0);

	TD_InsCreaProfil[playerid][40] = CPTD(playerid,480.000000, 114.000000, "LD_BEAT:left"); // 6 - Nationalité - Flèche gauche
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][40], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][40], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][40], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][40], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][40], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][40], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][40], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][40], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][40], 1);

	TD_InsCreaProfil[playerid][41] = CPTD(playerid,611.000000, 114.000000, "LD_BEAT:right"); // 6 - Nationalité - Flèche droite
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][41], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][41], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][41], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][41], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][41], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][41], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][41], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][41], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][41], 1);
	
	TD_InsCreaProfil[playerid][42] = CPTD(playerid,552.000000, 116.000000, "NATIONALITÉ"); // 6 - Nationalité - Titre
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][42], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][42], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][42], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][42], 0.400000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][42], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][42], 1);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][42], 0);
	
	TD_InsCreaProfil[playerid][43] = CPTD(playerid,553.000000, 153.000000, "~n~"); // 7 - Origine - Contour noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][43], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][43], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][43], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][43], 0.500000, 1.799998);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][43], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][43], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][43], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][43], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][43], 0.000000, 100.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][43], 0);

	TD_InsCreaProfil[playerid][44] = CPTD(playerid,553.000000, 154.000000, "~n~"); // 7 - Origine - Relief gris
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][44], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][44], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][44], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][44], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][44], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][44], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][44], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][44], 353703423);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][44], 0.000000, 99.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][44], 0);

	TD_InsCreaProfil[playerid][45] = CPTD(playerid,553.000000, 154.899993, "~n~"); // 7 - Origine - Fonds noir
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][45], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][45], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][45], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][45], 0.500000, 1.399999);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][45], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][45], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][45], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][45], 151587327);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][45], 0.000000, 97.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][45], 0);

	TD_InsCreaProfil[playerid][46] = CPTD(playerid,480.000000, 154.000000, "LD_BEAT:left"); // 7 - Origine - Flèche gauche
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][46], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][46], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][46], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][46], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][46], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][46], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][46], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][46], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][46], 1);

	TD_InsCreaProfil[playerid][47] = CPTD(playerid,611.000000, 154.000000, "LD_BEAT:right"); // 7 - Origine - Flèche droite
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][47], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][47], 4);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][47], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][47], 1111638783);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][47], 0);
	PlayerTextDrawUseBox(playerid,TD_InsCreaProfil[playerid][47], 1);
	PlayerTextDrawBoxColor(playerid,TD_InsCreaProfil[playerid][47], 255);
	PlayerTextDrawTextSize(playerid,TD_InsCreaProfil[playerid][47], 15.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][47], 1);

	TD_InsCreaProfil[playerid][48] = CPTD(playerid,552.000000, 156.000000, "ORIGINE"); // 7 - Origine - Titre
	PlayerTextDrawAlignment(playerid,TD_InsCreaProfil[playerid][48], 2);
	PlayerTextDrawBackgroundColor(playerid,TD_InsCreaProfil[playerid][48], 255);
	PlayerTextDrawFont(playerid,TD_InsCreaProfil[playerid][48], 1);
	PlayerTextDrawLetterSize(playerid,TD_InsCreaProfil[playerid][48], 0.400000, 1.000000);
	PlayerTextDrawColor(playerid,TD_InsCreaProfil[playerid][48], -1);
	PlayerTextDrawSetOutline(playerid,TD_InsCreaProfil[playerid][48], 1);
	PlayerTextDrawSetSelectable(playerid,TD_InsCreaProfil[playerid][48], 0);

	for(new td = 0; td <= 48; td ++)
	{
		PlayerTextDrawSetProportional(playerid,TD_InsCreaProfil[playerid][td], 1);
		PlayerTextDrawSetShadow(playerid,TD_InsCreaProfil[playerid][td], 1);
		
		PlayerTextDrawShow(playerid, TD_InsCreaProfil[playerid][td]);
 	}
}

public UnLoadTDCreation(playerid)
{
	for(new i;i <= 48;i++)
	{
		PlayerTextDrawDestroy(playerid, TD_InsCreaProfil[playerid][i]);
	}
}
public show_crea(playerid)
{
	for(new i;i <= 48;i++)
	{
		PlayerTextDrawShow(playerid, TD_InsCreaProfil[playerid][i]);
	}
}
public hide_crea(playerid)
{
	for(new i;i <= 48; i++)
	{
		PlayerTextDrawHide(playerid, TD_InsCreaProfil[playerid][i]);
	}
}
