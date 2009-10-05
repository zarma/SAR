//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

Private ["_mk"];
_mk = _this select 0;

[(side player),"HQ"] sidechat format["marker %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone'];",_mk];
_shorttext ="Rejoingez le terminal de chargement.";
_longtext = "
Rejoingez le terminal de chargement en fin de ligne de chemin de fer au sud de Komarovo'
";

call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];

// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;

// trigger
/*
_pos = [3633.9609, 2201.3787, 0];
mk036131trig1 = createTrigger["EmptyDetector",_pos];
mk036131trig1 setTriggerArea [5,30,17.676254,True];
_stmt = format ["['%1'] execVM 'z_scripts\z_taskok.sqf';",_mk];
mk036131trig1 setTriggerStatements ["This",_stmt,""];
mk036131trig1 setTriggerActivation ["WEST","PRESENT",True];
*/
if (isserver) then {
mk036131st=0;
publicVariable 'mk036131st';
_pos = [3633.9609, 2201.3787, 0];
mk036131trig2 = createTrigger["EmptyDetector",_pos];
mk036131trig2 setTriggerArea [5,30,17.676254,True];
mk036131trig2 setTriggerStatements ["This","mk036131st=1;publicVariable 'mk036131st';",""];
mk036131trig2 setTriggerActivation ["WEST","PRESENT",True];
};

"mk036131st" addPublicVariableEventHandler {
  hint format ["mk036131st %1",mk036131st];
  if (mk036131st==1) then {
  ['mk036131'] execVM 'z_scripts\z_taskok.sqf';
  };
};
