//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction teste les missions chargées
//////////////////////////////////////////////////////////////////

private ["_return"];


_t = 5;

while {true} do {
  [(side player),"HQ"] sidechat format["loadercheck "];
  if (count missionsf > 0) then {call z_fnc_loadereasy;};  
  sleep _t;
};