//[(side player),"HQ"] sidechat format["debut patrols"];
if (!isServer) exitWith {};
waituntil {!isnil "bis_fnc_init"};

_max_dist_between_waypoints = 50;

_pos = getMarkerPos "mkp1";
_classString = "INS_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp1 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp1, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp2";
_classString = "INS_MilitiaSquad";
_class = _classString call ZF_stringToConfig;
_grp2 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp2, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp3";
_classString = "INS_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp1 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp3, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp4";
_classString = "INS_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp1 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp4, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp5";
_classString = "INS_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp1 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp5, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp6";
_classString = "INS_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp1 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp6, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;


_pos = getMarkerPos "mkp7";
_classString = "INS_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp1 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp7, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;





if (true) exitWith {};