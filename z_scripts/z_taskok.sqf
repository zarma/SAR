//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk =  _this select 0; // marqueur associé au trigger
_trigger = _this select 1;
_who = list _trigger;
[(side player),"HQ"] sidechat format["mission %1 réussie.", _mk];



_mk setMarkerColorLocal "ColorOrange";
call compile format["o%1 settaskstate 'Succeeded';",_mk];			



if (true) exitWith {};