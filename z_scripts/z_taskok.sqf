//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
private ["_mk","_isinarray"];
_mk =  _this select 0;

[(side player),"HQ"] sidechat format["mission %1 réussie.", _mk];

_mk setMarkerColorLocal "ColorOrange";
call compile format["o%1 settaskstate 'Succeeded';",_mk];			

_isinarray = missions_faciles_chargees find _mk;

if (_isinarray>-1) then
{
missions_faciles_chargees = [missions_faciles_chargees, _isinarray]  call BIS_fnc_removeIndex;
nb_missions_faciles_chargees = nb_missions_faciles_chargees - 1;
};

if (true) exitWith {};