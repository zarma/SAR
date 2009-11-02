//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// trajet terrestre
//////////////////////////////////////////////////////////////////

_veh = _this select 0;
_locations = _this select 1;

_n = 0;
/*
{
[(side player),"HQ"] sidechat format["town %1 : %2", _x,text _x];
_n = _n +1;
_mk = format["Marker%1",_n];
_t = createMarker [format ['%1',_mk], locationposition _x ];
_mk setMarkerType "Flag1";
} forEach _loclist;
*/
_loc = _loclist call BIS_fnc_selectRandom;

_locpos = locationposition _loc;
format ["_loc %1 %2 ",_loc,_locpos] call z_smsg;

_t = createMarker [format ['mk%1','z'], _locpos ];
_t setMarkerType "Flag1";
format ["_loc %1 %2 ",_loc,_locpos] call z_smsg;

_t = createMarker ["mktraffr1", getpos traffr1 ];
_t setMarkerType "Vehicle";

_grp = group traffr1;
_pos = _locpos;
_radius = 0;
_wp = _grp addWaypoint [_pos,_radius];
_wp setwaypointtype "MOVE";
_wp setWaypointSpeed "FULL";
_wp setWaypointCompletionRadius 30;

while {alive traffr1} do {
	_t setMarkerPos getpos traffr1;
	sleep 5;
};