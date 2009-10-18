//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction teste les missions chargées
//////////////////////////////////////////////////////////////////
//if (!isServer) exitWith{};
private ["_t","_tm","_td"];
_t = 180;
_t = 10;
_tm = 120;
_tm = 20;
_td = 600;
_td = 30;
//format ["début loadercheck %1",missionsf] spawn z_smsg;
while {true} do {
  if (count missionsf > 0) then {call z_fnc_loadereasy;};  
  sleep _t;

  if (Difficulty==0) then {

    if (time > _tm) then {call z_fnc_loadermedium;};
    if (time > _td) then {call z_fnc_loaderhard;};
  };

  if ((Difficulty==2) && (count missionsm > 0)) then {call z_fnc_loadermedium;};

  if ((Difficulty==3) && (count missionsd > 0)) then {call z_fnc_loaderhard;};

};