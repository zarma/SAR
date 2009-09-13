//[(side player),"HQ"] sidechat format["debut patrols"];
if (!isServer) exitWith {};
waituntil {!isnil "bis_fnc_init"};

_max_dist_between_waypoints = 50;

_pos = getMarkerPos "mkp1";
_grp1 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp1, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp2";
_grp2 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp2, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp3";
_grp3 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp3, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp4";
_grp4 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp4, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp5";
_grp5 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp5, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

_pos = getMarkerPos "mkp6";
_grp6 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp6, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;


_pos = getMarkerPos "mkp7";
_grp7 = [(_pos),east,12] call bis_fnc_spawngroup;
[_grp7, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;





if (true) exitWith {};