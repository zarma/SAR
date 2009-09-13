//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//  appelé par addaction
// _params select 0           objet fouillé
//////////////////////////////////////////////////////////////////
if !(isserver) exitwith {};
private ["_params","_obj"];
_params = _this select 3;
_obj = _params select 0; // objet fouillé


[(side player),"HQ"] sidechat format["_obj fouillé %1 ", _obj];

_obj setVariable ["fouille", 1, true];