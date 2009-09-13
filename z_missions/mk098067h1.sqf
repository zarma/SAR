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