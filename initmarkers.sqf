//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
private ["_missions","_missions1","_missions2","_missions3"];
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
  
_missions =[];
_missions1 = ["mk017124","mk036131","mk072100"]; //faciles
_missions2 = ["mk098067","mk104127"]; // moyennes
_missions3 = ["mk096018"]; //difficiles

////// debug ///////
// initialization of markers array
//nul=[] execVM "testmarkers.sqf";
//_mission = "mk036131";
//_mission = "mk017124";


switch (Difficulty) do {
	case 0: {_missions = _missions1+_missions2+_missions3;};
	case 1: {_missions = _missions1;};
	case 2: {_missions = _missions2;};
	case 3: {_missions = _missions3;};
};


//[(side player),"HQ"] sidechat format["_missions %1  %2", _missions,Difficulty];
_townlist = nearestLocations [markerPos "mk026096", ["CityCenter"], 20000];
//[(side player),"HQ"] sidechat format["_townlist %1  ", _townlist];
{
[(side player),"HQ"] sidechat format["town %1 : %2", _x,text _x];
} forEach _townlist;

{
call compile format["['%1'] execVM 'z_missions\%1.sqf';",_x];
} forEach _missions;