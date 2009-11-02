//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// vehicule faisant une livraison
//////////////////////////////////////////////////////////////////

private [ "_veh"];

_veh = _this select 0;
_what = _this select 1;
_vehname = vehicleVarName _veh;
_pos = getPos _veh;

_veh setvariable ['status','delivering',true];

sleep 30;

_t = createMarker [format ['mk%1dest%2drug',_vehname,daytime], _pos ];
_t setMarkerText format ['%1 %2 %3',_what,_vehname,daytime];
_t setMarkerPos  _pos;
_t setMarkerType "waypoint";
_t setMarkerColor "ColorWhite";

_veh setvariable ['status','waiting',true];
