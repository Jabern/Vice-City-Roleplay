enum _ConnexionData
{
	NomDeCompte[50],
	MotDePass[150],
	nPerso1[50],
	nPerso2[50],
	nPerso3[50]
}
enum _persodateinfo
{
	HeureDeJeu,
	DernierConnexion[12]
}
new
	ConnexionData[MAX_PLAYERS][_ConnexionData],
	PersoDateInfo[MAX_PLAYERS][_persodateinfo][3];