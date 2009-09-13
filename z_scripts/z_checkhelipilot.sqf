// by Xeno

if (!isServer) exitWith{};

_vehicle = _this select 0;
_position = _this select 1;
_enterer = _this select 2;

_enterer_name = typeOf _enterer;

if (_position == "driver") then {
	if (_enterer_name != "USMC_Soldier_Pilot") then {
		driver _vehicle action["Eject",_vehicle];
	} else {
	_enterer addAction ["Drop", "drop.sqf", [_enterer], -9, false, false,""];
	};
};

if (true) exitWith {};