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

