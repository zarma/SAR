//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
if (!isServer) exitWith{};
  /////// Début GOLF
  // id 6;
  _pos = [10168.702, 1832.3062];
  mk104127golf =  createVehicle ["VWGolf", _pos,[],0,"CAN_COLLIDE"];
  mk104127golf setPos _pos;
  mk104127golf setSkill 0.60000002;
  mk104127golf setVariable ["fouille", 0, true]; 
  publicVariable "mk104127golf";
  grp5 = createGroup centerC;
  _this = grp5 createUnit ["Rocker3", [10176.865, 1830.6976, 0], [], 0, "CAN_COLLIDE"];
  _this assignAsDriver mk104127golf;
  _this moveInDriver  mk104127golf;
  _this = grp5 createUnit ["Worker2", [10178.865, 1830.6976, 0], [], 0, "CAN_COLLIDE"];
  _this assignAsCargo mk104127golf;
  _this moveInCargo  mk104127golf;
  _this = grp5 createUnit ["Worker4", [10176.865, 1832.6976, 0], [], 0, "CAN_COLLIDE"];
  _this assignAsCargo mk104127golf;
  _this moveInCargo  mk104127golf;
  
  // debut déplacement de la GOLF
  _pos = [10169.253, 1838.7589, 0];
  _radius = 0;
  _wp7 = grp5 addWaypoint [_pos,_radius];
  _wp7 setwaypointtype "MOVE";
  _wp7 setWaypointSpeed "FULL";
  _wp7 setWaypointStatements ["mk104127g==1", ""];
  
  // id 
  _pos = [10187.504, 1974.928, 0];
  _radius = 0;
  _wp8 = grp5 addWaypoint [_pos,_radius];
  _wp8 setwaypointtype "MOVE";
  
  // id 
  _pos = [10160.084, 1988.9923, 0];
  _radius = 0;
  _wp9 = grp5 addWaypoint [_pos,_radius];
  _wp9 setwaypointtype "MOVE";
  
  // id 
  _pos = [10148.319, 1971.3153, 0];
  _radius = 0;
  _wp10 = grp5 addWaypoint [_pos,_radius];
  _wp10 setwaypointtype "MOVE";
  
  // id 
  _pos = [10039.342, 1948.7311, 0];
  _radius = 0;
  _wp11 = grp5 addWaypoint [_pos,_radius];
  _wp11 setwaypointtype "MOVE";
  
  // id 
  _pos = [10010.676, 2067.313, 0];
  _radius = 0;
  _wp12 = grp5 addWaypoint [_pos,_radius];
  _wp12 setwaypointtype "MOVE";
  
  // id 
  _pos = [8476.8955, 2880.2957, 0];
  _radius = 0;
  _wp13 = grp5 addWaypoint [_pos,_radius];
  _wp13 setwaypointtype "MOVE";
  
  // id 
  _pos = [4574.5864, 2432.4216, 0];
  _radius = 0;
  _wp14 = grp5 addWaypoint [_pos,_radius];
  _wp14 setwaypointtype "MOVE";
  
  // id 
  _pos = [4500.6743, 2452.7234, 0];
  _radius = 0;
  _wp15 = grp5 addWaypoint [_pos,_radius];
  _wp15 setwaypointtype "MOVE";
  
  // id 
  _pos = [4591.0747, 2558.8669, 0];
  _radius = 0;
  _wp16 = grp5 addWaypoint [_pos,_radius];
  _wp16 setwaypointtype "MOVE";
  
  // id 
  _pos = [4756.7651, 2595.772, 0];
  _radius = 0;
  _wp17 = grp5 addWaypoint [_pos,_radius];
  _wp17 setwaypointtype "MOVE";
  
  // fin déplacement de la GOLF
  
  _this = createTrigger ["EmptyDetector", [30, 30]];
  _this setTriggerType "SWITCH";
  _this setTriggerStatements ["(mk104127golf getVariable 'fouille')==1;", "['mk104127'] execVM 'z_scripts\z_taskok.sqf'", ""];
  _trigger_1 = _this;
  
  /////// Fin GOLF
  
  _pos = [10470.068, 2023.3813];
  grp6 = createGroup (EAST);
  _veh18 = grp6 createUnit ["Ins_Lopotev", _pos,[],0,"CAN_COLLIDE"];
  _veh18 setDir 95;
  _veh18 setPos _pos;
  _veh18 setSkill 0.60000002;
  
  // id 13;
  _pos = [10547.418, 2096.0083];
  grp10 = createGroup (EAST);
  _veh22 = grp10 createUnit ["Ins_Bardak", _pos,[],0,"CAN_COLLIDE"];
  _veh22 setDir 220;
  _veh22 setPos _pos;
  _veh22 setSkill 0.60000002;
  
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
  
  /////  Décor
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
  
  _this = grp9 addWaypoint [[10464.719, 2429.4534, 0], 0];
  _this setWaypointSpeed "LIMITED";
  _this setWaypointBehaviour "CARELESS";
  _waypoint_3 = _this;
  
  _this = grp9 addWaypoint [[10470.678, 2431.02, 0], 0];
  _this setWaypointTimeout [10, 10, 10];
  _waypoint_4 = _this;
  
  _this = grp9 addWaypoint [[10475.967, 2415.8459, 0], 0];
  _this setWaypointTimeout [5, 5, 5];
  _waypoint_5 = _this;
  
  _this = grp9 addWaypoint [[10470.359, 2411.7214, 0], 0];
  _this setWaypointType "CYCLE";
  _this setWaypointTimeout [7, 7, 7];
  _waypoint_6 = _this;
  
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

