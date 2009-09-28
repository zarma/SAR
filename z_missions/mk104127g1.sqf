
/////// Début GOLF
// id 6;

_pos = [10168.702, 1832.3062];
mk104127golf =  createVehicle ["VWGolf", _pos,[],0,"CAN_COLLIDE"];
mk104127golf setPos _pos;
mk104127golf setSkill 0.60000002;
_id = mk104127golf addaction ["Fouiller véhicule", "z_scripts\z_fouille_objet.sqf", [mk104127golf], 1, false, false];
mk104127golf setVariable ["fouille", 0, true]; 

_this = createTrigger ["EmptyDetector", [30, 30]];
_this setTriggerType "SWITCH";
_this setTriggerStatements ["(mk104127golf getVariable 'fouille')==1;", "['mk104127'] execVM 'z_scripts\z_taskok.sqf'", ""];
_trigger_1 = _this;

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
/////// Fin GOLF
