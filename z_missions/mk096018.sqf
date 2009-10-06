//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

[(side player),"HQ"] sidechat format["mission %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Assaut camp insurgés.'];",_mk];
_shorttext = "Assaut sur le camp des insurgés";
_longtext = "
La guérilla a installé un camp près du barrage de Pobeda.<br/>
Nous savons qu'ils préparent une attaque d'envergure.<br/>
Une grande quantité de matériel y est entreprosée.<br/>
Ce camp est bien protégé.<br/>
Votre mission est de faire le maximum de dégats.<br/>
<br/>
Bon courage !<br/>
Que Dieu vous garde.<br/>
";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];


// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;


///////// server
if (isServer) then{
  _vehicle_5 = createVehicle ["UAZ_AGS30_INS", [9677.4092, 13553.571], [], 0, "CAN_COLLIDE"];
  _vehicle_5 setDir 29.549526;

  _vehicle_7 = createVehicle ["Ins_WarfareBMGNest_PK", [9673.1768, 13545.72, 0.00016021729], [], 0, "CAN_COLLIDE"];
  _vehicle_7 setDir 69.804932;

  _vehicle_8 = createVehicle ["Ins_WarfareBMGNest_PK", [9666.4043, 13555.214, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_8 setDir -37.707008;

  _vehicle_14 = createVehicle ["Fort_EnvelopeSmall", [9623.2461, 13295.886, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_14 setDir -128.69617;

  _vehicle_15 = createVehicle ["KORD", [9622.793, 13294.726, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_15 setDir -118.50769;

  _vehicle_16 = createVehicle ["Offroad_SPG9_Gue", [9912.1377, 13427.869], [], 0, "CAN_COLLIDE"];
  _vehicle_16 setDir 211.79947;

_group_1 = createGroup centerE;

  _unit_5 = _group_1 createUnit ["Ins_Woodlander3", [9917.8301, 13421.236], [], 0, "CAN_COLLIDE"];
  _unit_5 setUnitRank "SERGEANT";
  _unit_5 setUnitAbility 0.60000002;

  _unit_6 = _group_1 createUnit ["Ins_Villager4", [9913.502, 13420.993], [], 0, "CAN_COLLIDE"];
  _unit_6 setUnitAbility 0.60000002;

_waypoint_0 = _group_1 addWaypoint [[9912.5723, 13426.725, 0], 0];
_waypoint_0 setWaypointType "GETIN NEAREST";
_waypoint_0 setWaypointCombatMode "RED";
_waypoint_0 setWaypointSpeed "FULL";
_waypoint_0 setWaypointBehaviour "COMBAT";


_group_2 = createGroup centerE;

  _unit_10 = _group_2 createUnit ["Ins_Woodlander1", [9899.9219, 13433.167], [], 0, "CAN_COLLIDE"];
  _unit_10 setUnitAbility 0.60000002;

  _unit_11 = _group_2 createUnit ["Ins_Villager3", [9899.3271, 13432.366], [], 0, "CAN_COLLIDE"];
  _unit_11 setUnitAbility 0.60000002;

  _vehicle_17 = createVehicle ["BRDM2_INS", [9898.9883, 13431.238], [], 0, "CAN_COLLIDE"];
  _vehicle_17 setDir 223.13849;




  _unit_15 = _group_2 createUnit ["Ins_Soldier_AR", [9899.918, 13432.335], [], 0, "CAN_COLLIDE"];
  _unit_15 setUnitRank "SERGEANT";
  _unit_15 setUnitAbility 0.60000002;
 _group_2 selectLeader _unit_15;

_waypoint_2 = _group_2 addWaypoint [[9899.6729, 13431.772], 0];
_waypoint_2 setWaypointType "GETIN NEAREST";
_waypoint_2 setWaypointCombatMode "RED";
_waypoint_2 setWaypointSpeed "FULL";
_waypoint_2 setWaypointBehaviour "COMBAT";



  _vehicle_18 = createVehicle ["Land_fortified_nest_small", [9834.2422, 13473.545], [], 0, "CAN_COLLIDE"];
  _vehicle_18 setDir 51.159103;


_group_3 = createGroup centerE;


  _vehicle_21 = createVehicle ["SPG9_Ins", [9833.2314, 13467.23], [], 0, "CAN_COLLIDE"];
  _vehicle_21 setDir -475.00452;



  _vehicle_23 = createVehicle ["KORD_high", [9834.209, 13473.679], [], 0, "CAN_COLLIDE"];
  _vehicle_23 setDir 254.60352;

_objectComposition_1 = [[9598, 13532], 156.40874, "AntiAir1_RU"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectmapper.sqf"));

_objectComposition_2 = [[9616.9336, 13491.027], -173.85924, "WeaponsStore1_RU"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectmapper.sqf"));

_objectComposition_5 = [[9639.2432, 13500.251, -2.2888184e-005], -8.4853659, "Camp1_RU"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectmapper.sqf"));



  _vehicle_32 = createVehicle ["Land_Ind_IlluminantTower", [9649.0557, 13532.791], [], 0, "CAN_COLLIDE"];
  _vehicle_32 setDir -25.363209;


_group_4 = createGroup centerE;


  _unit_26 = _group_4 createUnit ["RU_Soldier_AR", [9373.3701, 14298.896], [], 0, "CAN_COLLIDE"];
  _unit_26 setDir 192.76999;
  _unit_26 setUnitAbility 0.60000002;
  _group_4 selectLeader _unit_26;


_waypoint_3 = _group_4 addWaypoint [[9373.5762, 14293.473, -0.0005645752], 0];
_waypoint_3 setWaypointType "SENTRY";
_waypoint_3 setWaypointCombatMode "RED";
_waypoint_3 setWaypointBehaviour "COMBAT";


_group_5 = createGroup centerE;


  _unit_27 = _group_5 createUnit ["RUS_Soldier_TL", [9356.2051, 14141.608], [], 0, "CAN_COLLIDE"];
  _unit_27 setDir 171.87602;
  _unit_27 setUnitRank "LIEUTENANT";
  _unit_27 setUnitAbility 0.91221392;
  _group_5 selectLeader _unit_27;

  _unit_28 = _group_5 createUnit ["RU_Soldier_SniperH", [9353.6201, 14143.519, 0], [], 0, "CAN_COLLIDE"];
  _unit_28 setUnitAbility 1;

  _unit_29 = _group_5 createUnit ["Ins_Soldier_AA", [9356.0977, 14143.945, 0], [], 0, "CAN_COLLIDE"];
  _unit_29 setUnitAbility 0.60000002;

  _unit_30 = _group_5 createUnit ["RU_Soldier_HAT", [9358.1494, 14144.031, 0], [], 0, "CAN_COLLIDE"];
  _unit_30 setUnitAbility 0.60000002;

  _unit_31 = _group_5 createUnit ["RUS_Soldier_Marksman", [9358.8359, 14143.027, 0], [], 0, "CAN_COLLIDE"];
  _unit_31 setUnitAbility 0.60000002;

  _unit_32 = _group_5 createUnit ["Ins_Soldier_MG", [9354.6367, 14144.251, 0], [], 0, "CAN_COLLIDE"];
  _unit_32 setUnitAbility 0.60000002;

  _unit_33 = _group_5 createUnit ["Ins_Soldier_Medic", [9355.3262, 14144.393, 0], [], 0, "CAN_COLLIDE"];
  _unit_33 setUnitAbility 0.60000002;

  _unit_34 = _group_5 createUnit ["Ins_Soldier_GL", [9356.9873, 14143.685, 0], [], 0, "CAN_COLLIDE"];
  _unit_34 setUnitAbility 0.60000002;

  _unit_35 = _group_5 createUnit ["MVD_Soldier_GL", [9356.7852, 14144.413, 0], [], 0, "CAN_COLLIDE"];
  _unit_35 setUnitAbility 0.60000002;




_waypoint_4 = _group_5 addWaypoint [[9406.3506, 14106.939], 0];
_waypoint_4 setWaypointCombatMode "RED";
_waypoint_4 setWaypointFormation "DIAMOND";
_waypoint_4 setWaypointSpeed "FULL";
_waypoint_4 setWaypointBehaviour "COMBAT";



  _pos = [9656.1289, 13554.854];
  mk096018c1 = createVehicle ["RULaunchersBox", _pos, [], 0, "CAN_COLLIDE"];
  mk096018c1 setDir -21.715328;
  mk096018c1 setVehicleVarName "mk096018c1";
  mk096018c1 setpos _pos;

  _pos = [9649.0459, 13551.825];
  mk096018c2 = createVehicle ["RULaunchersBox", _pos, [], 0, "CAN_COLLIDE"];
  mk096018c2 setDir -22.367998;
  mk096018c2 setVehicleVarName "mk096018c2";
  mk096018c2 setpos _pos;


  _pos = [9653.9834, 13534.512];
  mk096018c3 = createVehicle ["KamazReammo", _pos, [], 0, "CAN_COLLIDE"];
  mk096018c3 setDir 69.967186;
  mk096018c3 setVehicleVarName "mk096018c3";
  mk096018c3 setpos _pos;


  _pos = [9711.8906, 13558.736];
  mk096018c4 = createVehicle ["KamazReammo", _pos, [], 0, "CAN_COLLIDE"];
  mk096018c4 setDir 152.97414;
  mk096018c4 setVehicleVarName "mk096018c4";
  mk096018c4 setpos _pos;


// populate
sleep 8;

_pos = getMarkerPos "sp096018a";
_classString = "INS_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp1 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp1, _pos] call BIS_fnc_taskDefend;
sleep 8;
_classString = "INS_MilitiaSquad";
_class = _classString call ZF_stringToConfig;
_grp2 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp2, _pos] call BIS_fnc_taskDefend;
sleep 8;
private ["_max_dist_between_waypoints"];
_max_dist_between_waypoints = 500;
_classString = "RU_SniperTeam";
_class = _classString call ZF_stringToConfig;
_grp3 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp3, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;
sleep 8;
_classString = "RU_InfSquad";
_class = _classString call ZF_stringToConfig;
_grp4 = [_pos, east, _class] call BIS_fnc_spawnGroup;
[_grp4, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;


// triggers liés aux véhicules
mk096018st=0;
publicVariable 'mk096018st';
_mpos = markerPos "mk115040";
call compile format["ok%1=false",_mk];
call compile format["t%1=createTrigger['EmptyDetector',_mpos]",_mk];
call compile format["t%1 setTriggerArea [350, 350, 0, false]",_mk];
call compile format["t%1 setTriggerActivation ['WEST', 'PRESENT', true]",_mk];
call compile format["t%1 setTriggerStatements['!alive mk096018c1 && !alive mk096018c2 && !alive mk096018c3 && !alive mk096018c4', 'mk096018st=1;publicVariable ''mk096018st'';', 'ok%1=false']",_mk];

}; //// fin server
///////// end server
/*
mk096018o1 = compile preprocessFile "z_missions\mk096018s1.sqf"; // placement des objets
nil = [] spawn mk096018s1;
*/
"mk096018st" addPublicVariableEventHandler {
  hint format ["mk096018st %1",mk096018st];
  if (mk096018st==1) then {
  ['mk096018'] execVM 'z_scripts\z_taskok.sqf';
  };
};
