//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

//_loclist = nearestlocations [markerpos "mk098067", ["CityCenter"], 2000];
_loclist = nearestlocations [markerpos "mk098067", ["Hill"], 8000];

[(side player),"HQ"] sidechat format["_loclist %1  ", _loclist];
_n = 0;
{
[(side player),"HQ"] sidechat format["town %1 : %2", _x,text _x];
_n = _n +1;
_mk = format["Marker%1",_n];
_t = createMarker [format ['%1',_mk], locationposition _x ];
_mk setMarkerType "Warning";
} forEach _loclist;
