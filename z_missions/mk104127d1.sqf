/////// Début décor
// id 11;
_pos = [10506.35, 2334.1563];
//grp8 = createGroup (CIV);
_veh20 = createVehicle ["Ikarus", _pos,[],0,"CAN_COLLIDE"];
_veh20 setDir 222.31445;
_veh20 setPos _pos;
_veh20 setSkill 0.60000002;


// id 12;
_pos = [10465.562, 2425.3447];
grp9 = createGroup (EAST);
hooker1 = grp9 createUnit ["Hooker4",  _pos, [], 0, "CAN_COLLIDE"];
hooker1 setDir 64.816399;
hooker1 setPos _pos;
hooker1 setSkill 0.60000002;

// id 14;
_pos = [10209.714, 1764.1058];
grp11 = createGroup (CIV);
_veh23 = grp11 createUnit ["Fishing_Boat", _pos,[],0,"CAN_COLLIDE"];
_veh23 setDir 85;
_veh23 setPos _pos;
_veh23 setSkill 0.60000002;

// id 9;
_pos = [10497.223, 2019.3484,0];
_veh28 = createVehicle ["SkodaRed", _pos,[],0,"CAN_COLLIDE"];
_veh28 setDir -31.194176;
_veh28 setPos _pos;
_veh28 setSkill 0.60000002;


// id 10;
_pos = [10617.42, 2182.6062,0];
_veh29 = createVehicle ["Lada2", _pos,[],0,"CAN_COLLIDE"];
_veh29 setDir 243.97565;
_veh29 setPos _pos;
_veh29 setSkill 0.60000002;
/////// Fin décor
