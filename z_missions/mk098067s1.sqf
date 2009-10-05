if (!isServer) exitWith{};
/// 073089

_this = createVehicle ["Land_Antenna", [7314.3413, 6356.0542, 0], [], 0, "CAN_COLLIDE"];
_vehicle_56 = _this;

/// Kumyrna
_this = createVehicle ["LocalBasicWeaponsBox", [8339.5684, 5479.103, 0], [], 0, "CAN_COLLIDE"];
_vehicle_68 = _this;


//// Forêt noire
_vehicle_69 = objNull;
if (true) then
{
  mk098067c1 = createVehicle ["GuerillaCacheBox", [9077.3213, 8041.4844], [], 0, "CAN_COLLIDE"];
  mk098067c1 setDir 187.13234;
  nil=[mk098067c1,5,0.8] execVM "z_scripts\z_piege.sqf";
  publicVariable mk098067c1;
};


_vehicle_70 = objNull;
if (true) then
{
  _this = createVehicle ["Igla_AA_pod_East", [9065.0762, 8033.8438, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_70 = _this;
  _this setDir -131.42813;
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["KORD", [9065.2617, 8030.2744, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir 65.274452;
};

_vehicle_56 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Antenna", [9087.8184, 8038.9126, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_56 = _this;
  _this setPos [9087.8184, 8038.9126, 0];
};

_vehicle_72 = objNull;
if (true) then
{
  _this = createVehicle ["Pickup_PK_GUE", [9076.2539, 8028.8457], [], 0, "NONE"];
  _vehicle_72 = _this;
  _this setDir 181.28342;
  _this setPos [9076.2539, 8028.8457];
};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["Offroad_SPG9_Gue", [9072.3184, 8029.144], [], 0, "NONE"];
  _vehicle_73 = _this;
  _this setDir 181.44882;
  _this setPos [9072.3184, 8029.144];
};

_vehicle_74 = objNull;
if (true) then
{
  _this = createVehicle ["UAZ_AGS30_INS", [9072.1992, 8024.1963], [], 0, "NONE"];
  _vehicle_74 = _this;
  _this setDir -206.44632;
  _this setPos [9072.1992, 8024.1963];
};

_vehicle_75 = objNull;
if (true) then
{
  _this = createVehicle ["Ural_INS", [9072.5508, 8018.8237], [], 0, "NONE"];
  _vehicle_75 = _this;
  _this setDir 103.61862;
  _this setPos [9072.5508, 8018.8237];
};

//// troupes

_group_1 = createGroup centerE;

_unit_2 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Villager3", [9072.252, 8036.9766,0], [], 0, "CAN_COLLIDE"];
  _unit_2 = _this;
  _this setDir -223.12241;
  _this setUnitAbility 0.60000002;
  _group_1 selectLeader _this;
};

_unit_3 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Woodlander1", [9072.5244, 8034.9468, 0], [], 0, "CAN_COLLIDE"];
  _unit_3 = _this;
  _this setDir 111.81802;
  _this setUnitAbility 0.60000002;
};

_unit_4 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Woodlander3", [9073.7363, 8030.3711, 0], [], 0, "CAN_COLLIDE"];
  _unit_4 = _this;
  _this setDir 35.63419;
  _this setUnitAbility 0.60000002;
};

_unit_5 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Woodlander2", [9074.5449, 8034.7661, 0], [], 0, "CAN_COLLIDE"];
  _unit_5 = _this;
  _this setDir 8.5069504;
  _this setUnitAbility 0.60000002;
};

_unit_6 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Worker2", [9076.1006, 8029.5132, 0], [], 0, "CAN_COLLIDE"];
  _unit_6 = _this;
  _this setDir -190.61595;
  _this setUnitAbility 0.60000002;
};

_unit_7 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Villager4", [9074.3682, 8032.354, 0], [], 0, "CAN_COLLIDE"];
  _unit_7 = _this;
  _this setUnitAbility 0.60000002;
};

mk098067groupes = [_group_1];
waituntil {!isnil "bis_fnc_init"};
_max_dist_between_waypoints = 25;
_pos = getpos _unit_2;
//[(side player),"HQ"] sidechat format["pos %1", _pos];
[_group_1, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

sleep 20;
// Triggers
mk098067st=0;
publicVariable "mk098067st";
_mpos= getpos mk098067c1;
format ["_mpos %1",_mpos] call z_smsg;
call compile format["ok%1=false",_mk];
call compile format["t%1=createTrigger['EmptyDetector',_mpos]",_mk];
call compile format["t%1 setTriggerActivation ['WEST', 'PRESENT', true]",_mk];
call compile format["t%1 setTriggerStatements['!alive mk098067c1', 'mk098067st=1;publicVariable ''mk098067st'';', 'ok%1=false']",_mk];

 
//// fin server