//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

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
  


////// debug ///////
// initialization of markers array
//nul=[] execVM "testmarkers.sqf";
//_mission = "mk036131";
//_mission = "mk017124";
//_mission = "mk104127";
_mission = "mk098067";
call compile format["['%1'] execVM 'z_missions\%1.sqf';",_mission];