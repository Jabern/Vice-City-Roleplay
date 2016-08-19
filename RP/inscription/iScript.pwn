#include <YSI\YSI\y_hooks>

forward InscriptionStep1(playerid);

public InscriptionStep1(playerid)
{
	ShowPlayerDialog(playerid, 1, DIALOG_STYLE_INPUT, "Veuillez entrée un mot de passe ;","Veuillez entrée un mot de passe qu'il faudrat retenir \nIl doit faire plus de 6 caractère !","Validée","Retour");
	
	
}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case 1:
		{
			static
				MDP[150];
				
			sscanf(inputtext, "s[150]", MDP);
			if(strlen(MDP) < 6) return ShowPlayerDialog(playerid, 1, DIALOG_STYLE_INPUT, "Mot de passe","Votre mot de passe doit contenir au moin 6 caractère !","validée","Retour");
			format(InscriptionData[playerid][MotDePass],150,"%s",MDP);
				
			ShowPlayerDialog(playerid, 2, DIALOG_STYLE_INPUT, "E-Mail","Veuillez entrée une adresse e-mail valide !","Validée","Retour");
			MDP = "";
		}
		case 2:
		{
			static
				mail[150];
				
			sscanf(inputtext,"s[150]",mail);
			if(strfind(mail,"@gmail.com",true) != -1 || strfind(mail,"@yahou.com",true) != -1 || strfind(mail,"@hotmail.fr",true) != -1)
			{
				format(InscriptionData[playerid][Email],150,"%s",mail);
				format(InscriptionData[playerid][NomDeCompte],150,"%s",NDC[playerid]);
				
				static
					req[500],
					ip[50];
					
				GetPlayerIp(playerid, ip,sizeof(ip));
				mysql_format(mysql,req,sizeof(req),"INSERT INTO compte (NomDeCompte,MotdePass,IP,Email) VALUES ('%s','%s','%s','%s')",InscriptionData[playerid][NomDeCompte],InscriptionData[playerid][MotDePass],ip,InscriptionData[playerid][Email]);
				mysql_tquery(mysql,req);
				
				SendClientMessage(playerid, -1, "[Compte] Votre compte a été enregistré avec succès !");
				
				for(new i; i < 10;i++)
				{
					PlayerTextDrawHide(playerid, Verif_NDC[playerid][i]);
				}
				UnLoadTDVerifNDC(playerid);
				
				OnPlayerRequestClass(playerid, 0);
			}
			else{ShowPlayerDialog(playerid, 2, DIALOG_STYLE_INPUT,"E-Mail","E-mail incorrect veuillez réessayer !","Validée","Retour");}
			mail = "";
		}
	}
	return 1;
}