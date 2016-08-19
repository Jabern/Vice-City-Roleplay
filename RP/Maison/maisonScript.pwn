#include "..\RP\Maison\maisonFunc.pwn"
#include "..\RP\Maison\maisonEnum.pwn"

hook OnGameModeInit()
{
	if(mysql_errno() != 0)
    {
        return OnGameModeExit();
    }
    else
    {
		mysql_tquery(mysql,"SELECT * FROM maison","LoadHouse");
		mysql_tquery(mysql,"SELECT * FROM maison","LoadHousePickup");
    }

	return 1;
}

CMD:creermaison(playerid, params[])
{
	static 
			int, prix;
	if(!sscanf(params, "ii", int, prix))
	{
		new maisonId = -1;
		for(new h = 1; h < MAX_HOUSES; h++)
		{
			if(HouseData[h][Prix] == 0)
   			{
				maisonId = h;
				break;
			}
		}		
		CreaMaison(playerid, maisonId, prix, int);
	}
	return 1;
}
