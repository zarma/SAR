//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

//[(side player),"HQ"] sidechat format["marker %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone'];",_mk];
_shorttext ="
Rejoingez le terminal de chargement.
";
_longtext = "
Rejoingez le terminal de chargement en fin de ligne de chemin de fer au sud de Komarovo'
";

call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
// trigger

_pos = [3633.9609, 2201.3787, 0];
_t43 = createTrigger["EmptyDetector",_pos];
_t43 setTriggerArea [5,30,17.676254,True];
_stmt = format ["['%1'] execVM 'z_scripts\z_taskok.sqf'",_mk];
_t43 setTriggerStatements ["This",_stmt,""];
_t43 setTriggerActivation ["WEST","PRESENT",True];




// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;