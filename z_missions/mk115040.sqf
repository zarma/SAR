//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

//[(side player),"HQ"] sidechat format["marker %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone'];",_mk];
_shorttext = "leshorttext";
_longtext = "leslongtext";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];

// objets

mk115040o1 = compile preprocessFile "z_missions\mk115040o1.sqf"; // placement des objets
nil = [] spawn mk115040o1;

// troupes
waituntil {!isnil "bis_fnc_init"};
sleep 8;
_pos = getMarkerPos _mk;
_grp1 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp1, _pos] call BIS_fnc_taskDefend;
_grp2 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp2, _pos] call BIS_fnc_taskDefend;
sleep 8;
private ["_max_dist_between_waypoints"];
_max_dist_between_waypoints = 500;
_classString = "RU_SniperTeam";
_class = _classString call ZF_stringToConfig;
_grp3 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp3, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

// trigger
_mpos = markerPos _mk;
call compile format["ok%1=false",_mk];
call compile format["t%1=createTrigger['EmptyDetector',_mpos]",_mk];
call compile format["t%1 setTriggerArea [350, 350, 0, false]",_mk];
call compile format["t%1 setTriggerActivation ['WEST', 'PRESENT', true]",_mk];
//call compile format["t%1 setTriggerStatements['(!alive mk115040a1)&&(!alive mk115040a2)&&(!alive mk115040a3)&&(!alive mk115040a4)&&(!alive mk115040a5)', '[''mk017124''] execVM ''z_scripts\z_taskok.sqf'';', 'ok%1=false']",_mk];
call compile format["t%1 setTriggerStatements['!alive mk115040a1', '[''mk017124''] execVM ''z_scripts\z_taskok.sqf'';', 'ok%1=false']",_mk];




// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;