if (!isServer) exitWith {};

sleep 3;

//servicetrigger setPosASL [position servicetrigger select 0, position servicetrigger select 1, 15.9];

uh1 setDamage 0;
uh2 setDamage 0;
mh1 setDamage 0;
mh2 setDamage 0;
mh3 setDamage 0;
mh4 setDamage 0;
c130a setDamage 0;
c130b setDamage 0;
av8 setDamage 0;
f35 setDamage 0;

[uh1, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[uh2, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[mh1, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[mh2, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[mh3, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[mh4, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[c130a, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[c130b, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[av8, 120] execVM "z_scripts\z_vehirespawn2H.sqf";
[f35, 120] execVM "z_scripts\z_vehirespawn2H.sqf";


if (true) exitWith {};