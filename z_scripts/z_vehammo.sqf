//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Gestion d'un trafficant d'armes
//////////////////////////////////////////////////////////////////

private [ "_veh"];

_veh = _this select 0;
_vehname = vehicleVarName _veh;

_veh setvariable ['tracking','true',true];

//format  ["I wait %1",_vehname] call z_smsg;
_loc = z_villagelocations call BIS_fnc_selectRandom;
_locpos = locationposition _loc;
if ( format ["%1", (_veh getVariable "markerdestination")] != "<null>") then {
			deleteMarker (_unit getVariable "markerdestination");
			};
_t = createMarker [format ['mk%1dest%2',_vehname,daytime], _locpos ];
_t setMarkerText format ['mk%1dest%2',_vehname,daytime];
_t setMarkerPos  _locpos;
_t setMarkerType "Warning";
_veh setvariable ['markerdestination',_t,true];



_grp = group _veh;
_pos = _locpos;
_radius = 0;

if !(isNil _t) then {deleteVehicle _t};
[nil,_veh, "loc",rMOVE,_pos] call RE;
_rayon = 300;
_t = createTrigger["EmptyDetector",_pos];
_t setTriggerArea [_rayon,_rayon,0,False];
_stmt = format ["[%1,'Drug'] execVM 'z_scripts\z_vehdelivering.sqf';",_veh];
_cond = format ["%1 in (thislist select 0)",_veh];
_t setTriggerStatements [_cond,_stmt,""];
_t setTriggerActivation ["CIV","PRESENT",false];

//{
//	deleteWaypoint _x;
//} foreach waypoints _grp;
//
//_wp = _grp addWaypoint [_pos,_radius];
//_wp setwaypointtype "MOVE";
//_wp setWaypointSpeed "FULL";
//_wp setWaypointCompletionRadius 300;
//_stmt = format ["%1 setvariable ['status','waiting',true];",_veh];
//_wp setWaypointStatements ["true", _stmt];

_veh setvariable ['status','moving',true];

if ((_veh getvariable 'tracking')=='true') then {
	nil=[_veh,"mil_triangle","ColorRed"] execVM "z_scripts\z_vehmarker.sqf";
	};