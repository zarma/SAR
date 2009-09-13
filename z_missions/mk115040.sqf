//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

[(side player),"HQ"] sidechat format["marker %1", _mk];

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone'];",_mk];
_shorttext = "leshorttext";
_longtext = "leslongtext";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];

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