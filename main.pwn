#include <a_samp>

#include <a_mysql>
#include <sscanf2>
#include <izcmd>
#include <streamer>
#include <zones>

#include "..\RP\Anti_Cheat\acIndex.pwn"
#include "..\RP\configuration.pwn"
#include "..\RP\mysql.pwn"
#include "..\RP\verification_joueur.pwn"
#include "..\RP\connexion\cIndex.pwn"
#include "..\RP\inscription\iIndex.pwn"
#include "..\RP\Personnage\pIndex.pwn"
#include "..\RP\Arme_sys\armeIndex.pwn"
#include "..\RP\Maison\maisonIndex.pwn"


main()
{
	print("\n----------------------------------");
	print("Vc-Rp v0.1 par ViteSpirite & Jaber");
	print("----------------------------------\n");
}
public OnGameModeInit()
{
	AddPlayerClass(21,521.6209,-1794.9620,9.3325,315.3353,0,0,0,0,0,0);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}
