//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
//////////////////////////////////////////////////////////////////
// Type de chargeur
// maxspeed ???
// setDir avant le chargement
private ["_vehicle"];

_veh = _this select 0;

_cargo = _veh getVariable "cargo";
_cargoact = _veh getVariable "cargoact";
_cargo_type = typeof _cargo;
detach _cargo;
_pos = [_cargo, 3, 100] call BIS_fnc_relPos;
//_pos = [_pos select 0, _pos select 1, 0];
_cargo setPos _pos;
player moveinGunner _cargo; 
_cargo setvelocity [0, 0, 1];

hintSilent format [" %1 déchargé %2 type %3",_cargo, _pos,_cargo_type];
_veh removeAction _cargoact;

