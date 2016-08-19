#define MAX_ARME_SLOT 12

enum _armeinfo
{
	NomDePerso[50],
	
	armeId,
	munition,
};

new
	PlayerArmeInfo[MAX_PLAYERS][_armeinfo][MAX_ARME_SLOT];