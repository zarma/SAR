private ["_unit", "_firer", "_distance", "_weapon", "_muzzle",
"_mode", "_ammo", "_act", "_param", "_driver", "_speed","_crew","_driver","_pos"];
_param = _this select 0;
_unit = _param select 0;
_firer = _param select 1; 
_distance =  _param select 2;
_weapon = _param select 3;
_muzzle = _param select 4;
_mode = _param select 5;
_ammo = _param select 6;
_act = _this select 1;


if (_act=="stop") then {


  _name = gettext (configFile >> "CfgVehicles" >> (typeof _unit) >> "displayName"); 
	format ["Tir de semonce sur véhicule %1",_name] call z_smsg;
	_unit setFuel 0;
	sleep 2;
	
	if (_unit isKindOf "car") then {
		if ((_unit getVariable "status")!="policecontroling") then
 		{  
			_crew = crew _unit;
			_driver = driver _unit;
			{unassignVehicle (vehicle _x); _x action ["GET OUT", vehicle _x];} forEAch _crew;
			_crew allowGetIn false;
			doStop _driver;
			hint "driver stopped";
			_driver doMove position _firer;
			_savedstatus=_unit getVariable "status";
			_unit setvariable ['status','policecontroling',true];
			
			_act1 = _unit addAction["Control vehicle","z_scripts\z_control_vehicle.sqf", [_unit,"start"], 1, false, false];
			_act2 = _unit addAction["Mark vehicle","z_scripts\z_control_vehicle.sqf", [_unit,"mark"], 1, false, true];
			_act3 = _unit addAction["Release it","z_scripts\z_control_vehicle.sqf", [_unit,"release"], 1, false, true];
			
			doStop _driver;
			waitUntil {(_unit getVariable "status")=='released'};
			_unit removeAction _act1;
			_unit removeAction _act2;
			_unit removeAction _act3;
			_unit setFuel 1;
			_crew allowGetIn true;
			_driver assignAsDriver _unit; _driver action ["GET IN", _unit];
			_crew = _crew - [_driver];
			{ _x assignAsCargo _unit; _x action ["GET IN", _unit];} forEAch _crew;
			waitUntil {_driver in  _unit};		
			if ( format ["%1", (_unit getVariable "markerdestination")] != "<null>") then {
				_pos= markerPos (_unit getVariable "markerdestination");
				format ["Véhicule %1 relâché destination %2.", typeof(_unit),_pos] call z_smsg;
				_driver move _pos ;
				};
			_unit setvariable ['status',_savedstatus,true];
		};
		
	};

	_unit setFuel 1;
};
