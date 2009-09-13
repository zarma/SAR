//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
if !(isserver) exitwith {};
private ["_units"];
_obj = _this select 0; // objet piégé
_units = _this select 1; // tableau des unités piégées
//[(side player),"HQ"] sidechat format["objet %1  ", _obj];

_obj setdamage 1;
//[_obj,4, time, false, true] spawn BIS_Effects_Burn;
// ajouter un bruit d'explosion (grenade)

{
 	_damage = random 1;
// 	[(side player),"HQ"] sidechat format["unité pégée  %1 damage %2", _x,_damage];
 	_x setDamage ((damage _x) + _damage);
  
} forEach _units;