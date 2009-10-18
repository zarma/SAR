//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

[(side player),"HQ"] sidechat format["mission %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Cherchez des armes',om];",_mk];
_shorttext ="  Cache d'armes";
_longtext = "
Sauter au sud de Gorka.
<br/>Rattisser la forêt noire.
<br/>Nous cherchons des caches d'armes.
<br/>Détruisez-les après avoir fait un inventaire. 
<br/><br/>Soyez très prudent, dans cette zone, la population ne nous aimes pas. 
Sept civils sont morts à la suite du bombardement par un de nos drônes d'une maison à Kumyrna.<br/>
";

call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
ztasks = ztasks + [[_mk,_shorttext,_longtext,"om"]];
// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;

///////// server
if (isServer) then
{

mk098067c1 = createVehicle ["GuerillaCacheBox", [9077.3213, 8041.4844], [], 0, "CAN_COLLIDE"];
mk098067c1 setDir 187.13234;

_vehicle_69 = objNull;
if (true) then
{
  _this = createVehicle ["Ural_INS", [9075.3799, 8016.1572], [], 0, "CAN_COLLIDE"];
  _vehicle_69 = _this;
  _this setDir -240.04192;
  _this setpos [9075.3799, 8016.1572];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["Offroad_DSHKM_INS", [9085.1777, 8012.2222], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir 108.38851;
  _this setpos [9085.1777, 8012.2222];
};

//// troupes

_group_1 = createGroup centerE;

_unit_2 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Villager3", [9072.252, 8036.9766, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _unit_2 = _this;
  _this setDir -223.12241;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_1 selectLeader _this;};
};

_unit_3 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Woodlander1", [9072.5244, 8034.9468, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _unit_3 = _this;
  _this setDir 111.81802;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_1 selectLeader _this;};
};

_unit_4 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Woodlander3", [9073.7363, 8030.3711, 0.00024414063], [], 0, "CAN_COLLIDE"];
  _unit_4 = _this;
  _this setDir 35.63419;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_1 selectLeader _this;};
};

_unit_5 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Woodlander2", [9074.5449, 8034.7661, 0.00021362305], [], 0, "CAN_COLLIDE"];
  _unit_5 = _this;
  _this setDir 8.5069504;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_1 selectLeader _this;};
};

_unit_6 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Worker2", [9076.1006, 8029.5132, 0.00024414063], [], 0, "CAN_COLLIDE"];
  _unit_6 = _this;
  _this setDir -190.61595;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_1 selectLeader _this;};
};

_unit_7 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Ins_Villager4", [9074.3682, 8032.354, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _unit_7 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_1 selectLeader _this;};
};

_max_dist_between_waypoints = 25;
_pos = getpos _unit_2;
[_group_1, (_pos), _max_dist_between_waypoints] call BIS_fnc_taskPatrol;

mk098067st=0;
publicVariable 'mk098067st';
_this = createTrigger ["EmptyDetector", [30, 30]];
_this setTriggerType "SWITCH";
_this setTriggerStatements ["!alive mk098067c1;", "mk098067st=1;publicVariable 'mk098067st';", ""];


};
////// Fin server

"mk098067st" addPublicVariableEventHandler {
  if (mk098067st==1) then {
  ['mk098067'] execVM 'z_scripts\z_taskok.sqf';
  };
};





