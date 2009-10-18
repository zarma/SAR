//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

Private ["_mk"];
_mk = _this select 0;

[(side player),"HQ"] sidechat format["mission %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['tache',of];",_mk];
_shorttext ="  texte court.";
_longtext = "
texte long<br/>
";

call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
ztasks = ztasks + [[_mk,_shorttext,_longtext,"of"]];

// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;

// server
if (isserver) then {
mkaaaooost=0;
publicVariable 'mkaaaooost';
_pos = markerPos _mk;
mkaaaoootrig1 = createTrigger["EmptyDetector",_pos];
mkaaaoootrig1 setTriggerArea [5,30,17.676254,True];
mkaaaoootrig1 setTriggerStatements ["This","mkaaaooost=1;publicVariable 'mkaaaooost';",""];
mkaaaoootrig1 setTriggerActivation ["WEST","PRESENT",True];
};

"mkaaaooost" addPublicVariableEventHandler {
//  hint format ["mkaaaooost %1",mkaaaooost];
  if (mkaaaooost==1) then {
  ['mkaaaooo'] execVM 'z_scripts\z_taskok.sqf';
  };
};
