#include <YSI\YSI\y_hooks>

#define MYSQL_HOST "localhost"
#define MYSQL_BDD "vcrp"
#define MYSQL_USER "root"
#define MYSQL_PASS "vcrp2016"

new
	mysql;
	
	
hook OnGameModeInit()
{
	mysql = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_BDD, MYSQL_PASS);
	
	if(mysql_errno() != 0){print("Connection mysql échouer !");}
	else{print("Connection mysql réussi !");}
	
	return 1;
}
