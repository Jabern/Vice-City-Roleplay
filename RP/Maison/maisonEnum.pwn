#define MAX_HOUSES 250

enum _houseData
{
	Proprio[128],
	Acheter,
	Fermer,
	InteriorID,
	World,
	Prix,
	Float:OX,
	Float:OY,
	Float:OZ,
	Float:IX,
	Float:IY,
	Float:IZ,
	Iint,
	Text3D:Label,
	EnterPickup,
	ExitPickup
}
new HouseData[MAX_HOUSES + 1][_houseData];