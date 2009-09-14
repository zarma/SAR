//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

[(side player),"HQ"] sidechat format["marker %1", _mk];

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



// objets

mk096018o1 = compile preprocessFile "z_missions\mk096018o1.sqf"; // placement des objets
nil = [] spawn mk096018o1;


// populate
sleep 8;
waituntil {!isnil "bis_fnc_init"};

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

// trigger
_mpos = markerPos _mk;
call compile format["ok%1=false",_mk];
call compile format["t%1=createTrigger['EmptyDetector',_mpos]",_mk];
call compile format["t%1 setTriggerArea [350, 350, 0, false]",_mk];
call compile format["t%1 setTriggerActivation ['WEST', 'PRESENT', true]",_mk];
call compile format["t%1 setTriggerStatements['this', 'xhandle = [''%1'',t%1,%1] execVM ''checktrigger.sqf'';', 'ok%1=false']",_mk];

// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;