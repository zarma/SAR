//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction lance une mission
//////////////////////////////////////////////////////////////////

Private ["_mission"];
_mission = _this select 0;
format ["mission %1",_mission] call z_smsg;
call format ["['%1'] spawn 'z_missions\%1.sqf';",_mission];