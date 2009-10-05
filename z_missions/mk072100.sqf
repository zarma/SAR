//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

[(side player),"HQ"] sidechat format["marker %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone'];",_mk];
_shorttext ="Saut de précision";
_longtext = "
Sauter sur le cible avec la plus grande précision possible.
<br/>Pour valider l''objectif il faut réussir 6 sauts.
";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
// objets

_pos = [7224.7603, 5331.3418];
_cible1 = createVehicle ["PARACHUTE_TARGET", _pos,[],0,"NONE"];
_cible1 setDir 102.064;
_cible1 setPos _pos;
_cible1 setSkill 0.60000002;

sleep 2;
// id 
ctmk072100=0;
mk072100trig1 = createTrigger["EmptyDetector",_pos];
mk072100trig1 setTriggerArea [4.5,4.5,0,False];
mk072100trig1 setTriggerStatements ["((getpos (thislist select 0)) select 2 < 0.2)","ctmk072100=ctmk072100+1; hint format ['%2 sauts réussis',(getpos (thislist select 0)) select 2,ctmk072100];['mk072100'] execVM 'z_missions\mk072100ok.sqf'",""];
mk072100trig1 setTriggerActivation ["WEST","PRESENT",True];


// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;