if (!isServer) exitWith{};

_vehicle_5 = objNull;
if (true) then
{
  _this = createVehicle ["UAZ_AGS30_INS", [9677.4092, 13553.571], [], 0, "CAN_COLLIDE"];
  _vehicle_5 = _this;
  _this setDir 29.549526;
};

_vehicle_7 = objNull;
if (true) then
{
  _this = createVehicle ["Ins_WarfareBMGNest_PK", [9673.1768, 13545.72, 0.00016021729], [], 0, "CAN_COLLIDE"];
  _vehicle_7 = _this;
  _this setDir 69.804932;
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["Ins_WarfareBMGNest_PK", [9666.4043, 13555.214, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir -37.707008;
};

_vehicle_14 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_EnvelopeSmall", [9623.2461, 13295.886, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_14 = _this;
  _this setDir -128.69617;
};

_vehicle_15 = objNull;
if (true) then
{
  _this = createVehicle ["KORD", [9622.793, 13294.726, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_15 = _this;
  _this setDir -118.50769;
};

_vehicle_16 = objNull;
if (true) then
{
  _this = createVehicle ["Offroad_SPG9_Gue", [9912.1377, 13427.869], [], 0, "CAN_COLLIDE"];
  _vehicle_16 = _this;
  _this setDir 211.79947;
};

_group_1 = createGroup centerE;

_unit_5 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Woodlander3", [9917.8301, 13421.236], [], 0, "CAN_COLLIDE"];
  _unit_5 = _this;
  _this setUnitRank "SERGEANT";
  _this setUnitAbility 0.60000002;
  if (true) then {_group_1 selectLeader _this;};
};

_unit_6 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Villager4", [9913.502, 13420.993], [], 0, "CAN_COLLIDE"];
  _unit_6 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_1 selectLeader _this;};
};

_this = _group_1 addWaypoint [[9912.5723, 13426.725, 0], 0];
_this setWaypointType "GETIN NEAREST";
_this setWaypointCombatMode "RED";
_this setWaypointSpeed "FULL";
_this setWaypointBehaviour "COMBAT";
_waypoint_0 = _this;

_group_2 = createGroup centerE;

_unit_10 = objNull;
if (true) then
{
  _this = _group_2 createUnit ["Ins_Woodlander1", [9899.9219, 13433.167], [], 0, "CAN_COLLIDE"];
  _unit_10 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_2 selectLeader _this;};
};

_unit_11 = objNull;
if (true) then
{
  _this = _group_2 createUnit ["Ins_Villager3", [9899.3271, 13432.366], [], 0, "CAN_COLLIDE"];
  _unit_11 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_2 selectLeader _this;};
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["BRDM2_INS", [9898.9883, 13431.238], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setDir 223.13849;
};

_unit_15 = objNull;
if (true) then
{
  _this = _group_2 createUnit ["Ins_Soldier_AR", [9899.918, 13432.335], [], 0, "CAN_COLLIDE"];
  _unit_15 = _this;
  _this setUnitRank "SERGEANT";
  _this setUnitAbility 0.60000002;
  if (true) then {_group_2 selectLeader _this;};
};

_this = _group_2 addWaypoint [[9899.6729, 13431.772], 0];
_this setWaypointType "GETIN NEAREST";
_this setWaypointCombatMode "RED";
_this setWaypointSpeed "FULL";
_this setWaypointBehaviour "COMBAT";
_waypoint_2 = _this;

_vehicle_18 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small", [9834.2422, 13473.545], [], 0, "CAN_COLLIDE"];
  _vehicle_18 = _this;
  _this setDir 51.159103;
};

_group_3 = createGroup centerE;

_vehicle_21 = objNull;
if (true) then
{
  _this = createVehicle ["SPG9_Ins", [9833.2314, 13467.23], [], 0, "CAN_COLLIDE"];
  _vehicle_21 = _this;
  _this setDir -475.00452;
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["KORD_high", [9834.209, 13473.679], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir 254.60352;
};
_objectComposition_1 = [[9598, 13532], 156.40874, "AntiAir1_RU"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectmapper.sqf"));

_objectComposition_2 = [[9616.9336, 13491.027], -173.85924, "WeaponsStore1_RU"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectmapper.sqf"));

_objectComposition_5 = [[9639.2432, 13500.251, -2.2888184e-005], -8.4853659, "Camp1_RU"] call (compile (preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectmapper.sqf"));

_this = createCenter west;
_this setFriend [civilian, 0.89999998];
_center_2 = _this;

_vehicle_32 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_IlluminantTower", [9649.0557, 13532.791], [], 0, "CAN_COLLIDE"];
  _vehicle_32 = _this;
  _this setDir -25.363209;
};

_group_4 = createGroup centerE;

_unit_26 = objNull;
if (true) then
{
  _this = _group_4 createUnit ["RU_Soldier_AR", [9373.3701, 14298.896], [], 0, "CAN_COLLIDE"];
  _unit_26 = _this;
  _this setDir 192.76999;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_4 selectLeader _this;};
};

_this = _group_4 addWaypoint [[9373.5762, 14293.473, -0.0005645752], 0];
_this setWaypointType "SENTRY";
_this setWaypointCombatMode "RED";
_this setWaypointBehaviour "COMBAT";
_waypoint_3 = _this;

_group_5 = createGroup centerE;

_unit_27 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["RUS_Soldier_TL", [9356.2051, 14141.608], [], 0, "CAN_COLLIDE"];
  _unit_27 = _this;
  _this setDir 171.87602;
  _this setUnitRank "LIEUTENANT";
  _this setUnitAbility 0.91221392;
  if (true) then {_group_5 selectLeader _this;};
};

_unit_28 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["RU_Soldier_SniperH", [9353.6201, 14143.519, 0], [], 0, "CAN_COLLIDE"];
  _unit_28 = _this;
  _this setUnitAbility 1;
  if (false) then {_group_5 selectLeader _this;};
};

_unit_29 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["Ins_Soldier_AA", [9356.0977, 14143.945, 0], [], 0, "CAN_COLLIDE"];
  _unit_29 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_5 selectLeader _this;};
};

_unit_30 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["RU_Soldier_HAT", [9358.1494, 14144.031, 0], [], 0, "CAN_COLLIDE"];
  _unit_30 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_5 selectLeader _this;};
};

_unit_31 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["RUS_Soldier_Marksman", [9358.8359, 14143.027, 0], [], 0, "CAN_COLLIDE"];
  _unit_31 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_5 selectLeader _this;};
};

_unit_32 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["Ins_Soldier_MG", [9354.6367, 14144.251, 0], [], 0, "CAN_COLLIDE"];
  _unit_32 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_5 selectLeader _this;};
};

_unit_33 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["Ins_Soldier_Medic", [9355.3262, 14144.393, 0], [], 0, "CAN_COLLIDE"];
  _unit_33 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_5 selectLeader _this;};
};

_unit_34 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["Ins_Soldier_GL", [9356.9873, 14143.685, 0], [], 0, "CAN_COLLIDE"];
  _unit_34 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_5 selectLeader _this;};
};

_unit_35 = objNull;
if (true) then
{
  _this = _group_5 createUnit ["MVD_Soldier_GL", [9356.7852, 14144.413, 0], [], 0, "CAN_COLLIDE"];
  _unit_35 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_5 selectLeader _this;};
};



_this = _group_5 addWaypoint [[9406.3506, 14106.939], 0];
_this setWaypointCombatMode "RED";
_this setWaypointFormation "DIAMOND";
_this setWaypointSpeed "FULL";
_this setWaypointBehaviour "COMBAT";
_waypoint_4 = _this;

_vehicle_33 = objNull;
if (true) then
{
  _this = createVehicle ["RULaunchersBox", [9656.1289, 13554.854], [], 0, "CAN_COLLIDE"];
  _vehicle_33 = _this;
  _this setDir -21.715328;
  _this setVehicleVarName "mk096018c1";
  mk096018c1 = _this;
};

_vehicle_35 = objNull;
if (true) then
{
  _this = createVehicle ["RULaunchersBox", [9649.0459, 13551.825], [], 0, "CAN_COLLIDE"];
  _vehicle_35 = _this;
  _this setDir -22.367998;
  _this setVehicleVarName "mk096018c2";
  mk096018c2 = _this;
};


_vehicle_38 = objNull;
if (true) then
{
  _this = createVehicle ["KamazReammo", [9653.9834, 13534.512], [], 0, "CAN_COLLIDE"];
  _vehicle_38 = _this;
  _this setDir 69.967186;
  _this setVehicleVarName "mk096018c3";
  mk096018c3 = _this;
};

_vehicle_40 = objNull;
if (true) then
{
  _this = createVehicle ["KamazReammo", [9711.8906, 13558.736], [], 0, "CAN_COLLIDE"];
  _vehicle_40 = _this;
  _this setDir 152.97414;
  _this setVehicleVarName "mk096018c4";
  mk096018c4 = _this;
};




// triggers liés aux véhicules
_mpos = markerPos "mk115040";
call compile format["ok%1=false",_mk];
call compile format["t%1=createTrigger['EmptyDetector',_mpos]",_mk];
call compile format["t%1 setTriggerArea [350, 350, 0, false]",_mk];
call compile format["t%1 setTriggerActivation ['WEST', 'PRESENT', true]",_mk];
call compile format["t%1 setTriggerStatements['!alive mk096018c1 && !alive mk096018c2 && !alive mk096018c3 && !alive mk096018c4', '[''mk096018''] execVM ''z_scripts\z_taskok.sqf'';', 'ok%1=false']",_mk];

