//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk = _this select 0;

[_mk] execVM 'z_scripts\z_title.sqf';

// Briefing
call compile format["o%1 = player createsimpletask['Rejoingez la zone',om];",_mk];
_shorttext ="  Elimination.";
_longtext = "
Rejoignez Zelenogorsk.
<br/>Trouvez et détruisez Victor.
<br/>Cette opération demande la plus grande discrétion.
<br/>Ne vous faites pas repérer par les civils.
";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
ztasks = ztasks + [[_mk,_shorttext,_longtext,"om"]];
// objets


sleep 2;
// Triggers



// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;