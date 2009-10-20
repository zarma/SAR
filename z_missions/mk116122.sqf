//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Mission de maintien de l'ordre , facile
// Recherche de drogue
//////////////////////////////////////////////////////////////////

Private ["_mk"];
_mk = _this select 0;

[_mk] execVM 'z_scripts\z_title.sqf';

// Briefing
call compile format["o%1 = player createsimpletask['Trouver la drogue',om];",_mk];
_shorttext ="  Traffic de drogue.";
_longtext = "
Une livraison de drogue va être effectuée par la mer.<br/>
Intercepter et capturer les trafficants.<br/>
Vous les amènerez à la base.<br/>
La police militaire se chargera de les interroger.<br/>
Les trafficants doivent être en état de parler.<br/>
";

call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
ztasks = ztasks + [[_mk,_shorttext,_longtext,"om"]];

// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;

// server
if (isserver) then {
mk116122st=0;
publicVariable 'mk116122st';
//



};
_pos = markerPos _mk;
mk116122trig1 = createTrigger["EmptyDetector",_pos];
mk116122trig1 setTriggerType "SWITCH";
mk116122trig1 setTriggerStatements ["(vehicle player distance boat3)<3","[vehicle player,boat3] execVM 'z_scripts\z_arrestation.sqf';",""];


"mk116122st" addPublicVariableEventHandler {
 hint format ["mk116122st %1",mk116122st];
  if (mk116122st==1) then {

    ['mk116122'] execVM 'z_scripts\z_taskok.sqf';
  };
};
