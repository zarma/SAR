//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

[(side player),"HQ"] sidechat format["marker %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone'];",_mk];
_shorttext ="
Saut de précision
";
_longtext = "
Sauter sur le cible avec la plus grande précision possible.
<br/>Pour valider l''objectif il faut réussir 6 sauts.
";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
// objets

_pos = [1751.744, 2906.6611, 0];
cible1 = createVehicle ["PARACHUTE_TARGET", _pos,[],0,"NONE"];
cible1 setDir 102.064;
cible1 setPos _pos;
cible1 setSkill 0.60000002;

sleep 2;
// id 
ctmk017124=0;
_pos = [1751.8099, 2906.6284, 0];
_t49 = createTrigger["EmptyDetector",_pos];
_t49 setTriggerArea [4.5,4.5,17.6763,False];
_t49 setTriggerStatements ["((getpos (thislist select 0)) select 2 < 0.2)","ctmk017124=ctmk017124+1; hint format ['%2 sauts réussis',(getpos (thislist select 0)) select 2,ctmk017124];['mk017124'] execVM 'z_missions\mk017124ok.sqf'",""];
_t49 setTriggerActivation ["WEST","PRESENT",True];


// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;