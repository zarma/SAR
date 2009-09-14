/////// Début cache insurgés

/// option 1
// id 15;
_pos = [10292.067, 1852.5486];
_veh30 = createVehicle ["SatPhone", _pos,[],0,"NONE"];
_veh30 setDir 360.37845;
_veh30 setPos _pos;
_veh30 setSkill 0.60000002;


// id 16;
_pos = [10300.522, 1853.193];
grp31 = createGroup (EAST);
_veh31 = grp31 createUnit ["Pastor", _pos,[],0,"CAN_COLLIDE"];
_veh31 setPos _pos;
_veh31 setSkill 0.60000002;

_this = grp31 addWaypoint [[10300.278, 1858.5699, 0], 0];
_this setWaypointCombatMode "RED";
_this setWaypointSpeed "LIMITED";
_this setWaypointTimeout [5, 8, 15];
_waypoint_7 = _this;

_this = grp31 addWaypoint [[10299.402, 1842.5419], 0];
_this setWaypointType "CYCLE";
_this setWaypointTimeout [6, 8, 20];
_waypoint_8 = _this;


// id 17;
_pos = [10291.984, 1852.8872];
_veh32 = createVehicle ["Suitcase", _pos,[],0,"NONE"];
_veh32 setPos _pos;
_veh32 setSkill 0.60000002;


// id 18;
_pos = [10292.842, 1852.5614];
_veh33 = createVehicle ["Explosive", _pos,[],0,"NONE"];
_veh33 setPos _pos;
_veh33 setSkill 0.60000002;


// id 19;
_pos = [10294.155, 1852.501];
_veh34 = createVehicle ["DSHKM_Ins", _pos,[],0,"NONE"];
_veh34 setDir -93.609673;
_veh34 setPos _pos;
_veh34 setSkill 0.60000002;


// id 20;
_pos = [10295.89, 1852.4359];
_veh35 = createVehicle ["LocalBasicAmmunitionBox", _pos,[],0,"NONE"];
_veh35 setDir -87.792267;
_veh35 setPos _pos;
_veh35 setSkill 0.60000002;


// id 21;
_pos = [10294.775, 1852.4579];
_veh36 = createVehicle ["Gunrack2", _pos,[],0,"NONE"];
_veh36 setPos _pos;
_veh36 setSkill 0.60000002;


// id 22;
_pos = [10288.865, 1865.4054];
_veh37 = createVehicle ["Pickup_PK_GUE", _pos,[],0,"CAN_COLLIDE"];
_veh37 setDir 180.2058;
_veh37 setPos _pos;
_veh37 setSkill 0.60000002;


// id 23;
_pos = [10296.869, 1865.5573];
_veh38 = createVehicle ["Land_Misc_Cargo2E", _pos,[],0,"CAN_COLLIDE"];
_veh38 setDir -85.87326;
_veh38 setPos _pos;
_veh38 setSkill 0.60000002;

/////// Fin cache insurgés

////// Début hostiles
// id 24;
_pos = [10306.092, 1846.9172,5];
grp12 = createGroup (EAST);
_veh24 = grp12 createUnit ["Ins_Soldier_GL", _pos,[],0,"CAN_COLLIDE"];
_veh24 setDir 2.8351822;
_veh24 setPos _pos;
_veh24 setSkill 0.60000002;


// id 25;
_pos = [10302.191, 1825.2549,10];
grp13 = createGroup (EAST);
_veh25 = grp13 createUnit ["Ins_Lopotev", _pos,[],0,"CAN_COLLIDE"];
_veh25 setDir 18.485895;
_veh25 setPos _pos;
_veh25 setSkill 0.60000002;

/////// Fin hostiles