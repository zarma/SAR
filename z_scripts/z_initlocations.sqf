//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Parcours aléatoires des trafficants
//////////////////////////////////////////////////////////////////

z_villagelocations = nearestlocations [markerpos "mkcenter", ["NameVillage"], 10000];


//[(side player),"HQ"] sidechat format["z_villagelocations %1  ", z_villagelocations];
//_n = 0;
//
//{
////	[(side player),"HQ"] sidechat format["town %1 : %2", _x,text _x];
//	_n = _n +1;
//	_mk = format["Marker%1",_n];
//	_t = createMarker [format ['%1',_mk], locationposition _x ];
//	//_mk setMarkerType "Flag1";
//	_mk setMarkerShape "ELLIPSE";
//	_mk  setMarkerColor "ColorBlue"; 
//	_mk setMarkerSize [300, 300];
//
//
//} forEach z_villagelocations;

//_loc = z_villagelocations call BIS_fnc_selectRandom;
//
//_locpos = locationposition _loc;
//format ["_loc %1 %2 ",_loc,_locpos] call z_smsg;
//
//_t = createMarker [format ['mk%1'dest,veh], _locpos ];
//_t setMarkerType "Flag1";
//format ["_loc %1 %2 ",_loc,_locpos] call z_smsg;
//
//_t = createMarker ["mk_veh", getpos _veh ];
//_t setMarkerType "Vehicle";
//
//_grp = group _veh;
//_pos = _locpos;
//_radius = 0;
//_wp = _grp addWaypoint [_pos,_radius];
//_wp setwaypointtype "MOVE";
//_wp setWaypointSpeed "FULL";
//_wp setWaypointCompletionRadius 30;
//
//while {alive _veh} do {
//	_t setMarkerPos getpos _veh;
//	sleep 5;
//};