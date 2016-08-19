#include <YSI\YSI\y_hooks>

hook OnGameModeInit()
{
	SendRconCommand("mapname Vice City");
	SetGameModeText("VCRP");
	SendRconCommand("hostname Vice City RôlePlay [FR]");
	
	return 1;
}