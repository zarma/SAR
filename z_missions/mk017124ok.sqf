//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

if (ctmk017124 != 6) exitWith {}; //il faut 6 sauts pour réussir la mission

_mk =  _this select 0; 

[(side player),"HQ"] sidechat format["Vous avez réussis vos 6 sauts"];

call compile format ["['%1'] execVM 'z_scripts\z_taskok.sqf'",_mk];

if (true) exitWith {};