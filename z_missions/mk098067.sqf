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
Sauter au sud de Gorka.
<br/>Rattisser la forêt noire.
<br/>Nous cherchons des caches d''armes.
<br/>Détruisez-les après avoir fait un inventaire. 
<br/><br/>Soyez très prudent, dans cette zone, la population ne nous aimes pas. 
Sept civils sont morts à la suite du bombardement par un de nos drônes d''une maison à Kumyrna.
";
call compile format["o%1 setSimpleTaskDescription[_longtext, _shorttext, '%1'];",_mk];
call compile format["o%1 setSimpleTaskDestination markerpos '%1';",_mk];
// objets

mk098067o1 = compile preprocessFile "z_missions\mk098067o1.sqf"; // placement des objets
nil = [] call mk098067o1;

mk098067h1 = compile preprocessFile "z_missions\mk098067h1.sqf"; // hostiles 
nil = [] call mk098067h1;




sleep 2;
// Triggers



// marker
_mk setMarkerTypeLocal "Join";
_mk  setMarkerColorLocal "ColorRed";
_mk  setMarkerTextLocal _mk;