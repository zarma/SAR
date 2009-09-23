//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

if (ctmk017124 != 6) exitWith {}; //il faut 6 sauts pour réussir la mission

_mk =  _this select 0; // marqueur associé au trigger
_trigger = _this select 1;
_who = list _trigger;
[(side player),"HQ"] sidechat format["Vous avez réussis vos 6 sauts"];



_mk setMarkerColorLocal "ColorOrange";
call compile format["o%1 settaskstate 'Succeeded';",_mk];			



if (true) exitWith {};