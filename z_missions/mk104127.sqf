//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
if !(isserver) exitwith {};
_mk = _this select 0;

//[(side player),"HQ"] sidechat format["marker %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone'];",_mk];
_shorttext ="
Renseignement
";
_longtext = "
Sauter sur la centrale électrique au nord de Elektrozavodsk.
<br/>Nous cherchons une malette contenant un ordinateur.
<br/>Rapportez-le à la base. 
<br/><br/>Je rappelle les consignes pas de bavures, la situation politique est plus que tendue.
 Les Russes attendent un pretexte pour intervenir.
";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
// objets

mk104127g1 = compile preprocessFile "z_missions\mk104127g1.sqf"; // Golf
nil = [] spawn mk104127g1;

mk104127h1 = compile preprocessFile "z_missions\mk104127h1.sqf"; // Hostiles
nil = [] spawn mk104127h1;

mk104127d1 = compile preprocessFile "z_missions\mk104127d1.sqf"; // Décor
nil = [] spawn mk104127d1;

mk104127c1 = compile preprocessFile "z_missions\mk104127c1.sqf"; // cache armes
nil = [] spawn mk104127c1;

mk104127t1 = compile preprocessFile "z_missions\mk104127t1.sqf"; // gestion spécifique des tâches



sleep 2;
// Triggers
bmk104127=0;
// id 
_pos = [10425.414, 2579.2412, 0];
_t67 = createTrigger["EmptyDetector",_pos];
_t67 setTriggerArea [10,10,0,False];
mk104127t=0;
_t67 setTriggerStatements ["((getpos (thislist select 0)) select 2 < 0.2)","mk104127t=1;nil = [] spawn mk104127t1;",""];
_t67 setTriggerActivation ["WEST","PRESENT",True];

// trigger pour détection de la Golf
_pos = [10169.795, 1832.3529, 0];
_t68 = createTrigger["EmptyDetector",_pos];
_t68 setTriggerArea [10,10,0,False];
mk104127g=0;
_t68 setTriggerActivation ["CIV","WEST D",True];
_t68 setTriggerStatements ["This","mk104127g=1",""];

// id 
_pos = [10468.64, 2423.9492, 0];
_t69 = createTrigger["EmptyDetector",_pos];
_t69 setTriggerArea [5,2,-15.048,True];
_t69 setTriggerStatements ["this && alive hooker1","",""];
_t69 setTriggerActivation ["WEST","PRESENT",True];


// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;