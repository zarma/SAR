
player addEventHandler ["killed",{[_this select 0, _this select 1] execVM "z_scripts\z_checkkill.sqf"}];

if (true) exitWith {};