//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
//////////////////////////////////////////////////////////////////
// Type de chargeur
// maxspeed ???
// setDir avant le chargement
private ["_vehicle"];

_veh = _this select 0;

_timeM119=10;
_timeM252=10;

_cargo = nearestobject [_veh, "StaticWeapon"];
_cargo_type = typeof _cargo;
if (isnull _cargo) exitwith {hintSilent "Rien à charger."};
_dist = _veh distance _cargo;
if (_dist>10) exitwith {hintSilent format ["Vous êtes trop loin du %1 %2m.",_cargo_type,_dist]};

_cargo attachTo [_veh,[0,-3,1]];
_veh setVariable ["cargo", _cargo, true];
_act = _veh addaction ["Décharger statique", "z_scripts\unloadstatic.sqf",[this,100,2],0,false];
_veh setVariable ["cargoact", _act, true];
hintSilent format [" %1 chargé",_cargo_type];

