//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
private ["_missions","_missionsT","_missions1","_missions2","_missions3"];

Z_MAX_MISSIONS_DIFFICILES = 1;
Z_MAX_MISSIONS_MOYENNES = 1;
Z_MAX_MISSIONS_FACILES = 2;
Z_MAX_MISSIONS = 2;
missions_chargees = [];
missions_faciles_chargees = [];
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

////// debug ///////
// initialization of markers array
//nul=[] execVM "testmarkers.sqf";
//_mission = "mk036131";
//_mission = "mk017124";


switch (Difficulty) do {
//	case 0: {_missions = _missionsf+_missionsm+_missionsd;};
	case 1: {missions = missionsf;};
	case 2: {missions = missionsm;};
	case 3: {missions = missionsd;};
};


// chargeur de missions

call z_fnc_loadercheck;
/*
if (count missions_chargees < Z_MAX_MISSIONS) then
{
  if (Difficulty==0) then // difficulté variable
  {
 

  }
  else
  {
  missions_chargees = [missions_chargees, missions select 0] call BIS_fnc_arrayPush;
  missions = [_missions, 0]  call BIS_fnc_removeIndex;
  [(side player),"HQ"] sidechat format["missions_chargees  %1  ", missions_chargees];    
  }
  ;
};
*/
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