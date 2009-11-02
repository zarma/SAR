//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Attache un markeur à un vehicule
//////////////////////////////////////////////////////////////////

_veh = _this select 0;
_markertype = _this select 1;
_markercolor = _this select 2;

_vehname = vehicleVarName _veh;
_ttrack = createMarker [format ['mk%1v',_vehname], getpos _veh ];
_ttrack setMarkerType _markertype;
_ttrack setMarkerColor _markercolor;
_ttrack setMarkerText format ['%1',_vehname];




while {alive _veh} do {
	_ttrack setMarkerPos getpos _veh;
	sleep 5;
};