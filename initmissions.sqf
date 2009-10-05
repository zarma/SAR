//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

//if (!isServer) exitWith{};
Z_MAX_MISSIONS_DIFFICILES = 2; // debug passer a 1
Z_MAX_MISSIONS_MOYENNES = 2; // debug passer a 1
Z_MAX_MISSIONS_FACILES = 2;
Z_MAX_MISSIONS = 2;
missions_chargees = [];
missions_faciles_chargees = [];
missions_moyennes_chargees = [];
missions_difficiles_chargees = [];
nb_missions_faciles_chargees = 0;
nb_missions_difficiles_chargees = 0;
nb_missions_moyennes_chargees = 0;
markers = [
	"mk115040",
  "mk104127",
  "mk036131",
  "mk017124",
  "mk020101",
  "mk022101",
  "mk026097",
  "mk044096",
  "mk098067",
  "mk102116",
  "mk116122",
  "mk127057",
  "mk128054",
  "mk096018",
  "mk081038",
  "mk121026", 
  "mk072100",
  "mk067097"
  ];
  
missions =[];
missionsf = [["mk017124","mk036131","mk072100"]] call Z_fnc_randomArray;//faciles
missionsm = [["mk098067","mk104127"]] call Z_fnc_randomArray; // moyennes
missionsd = [["mk096018","mk115040"]] call Z_fnc_randomArray; //difficiles


switch (Difficulty) do {
  case 0: {_missions = missionsm+missionsd;};
	case 1: {missions = missionsf;};
	case 2: {missions = missionsm;};
	case 3: {missions = missionsd;};
};
/*
format ["missionsf %1",missionsf] call z_smsg;
format ["missionsm %1",missionsm] call z_smsg;
format ["missionsd %1",missionsd] call z_smsg;
*/
zserverinitialised=true;
publicVariable "zserverinitialized";
// chargeur de missions

call z_fnc_loadercheck;
//call compile format["['%1'] execVM 'z_missions\%1.sqf';","mk104127"];

//_missions =["mk072100"];

//[(side player),"HQ"] sidechat format["_missions %1  %2", _missions,Difficulty];
//_townlist = nearestLocations [markerPos "mk026096", ["CityCenter"], 20000];
//[(side player),"HQ"] sidechat format["_townlist %1  ", _townlist];
/*{
[(side player),"HQ"] sidechat format["town %1 : %2", _x,text _x];
} forEach _townlist;

{
call compile format["['%1'] execVM 'z_missions\%1.sqf';",_x];
} forEach _missions;
*/