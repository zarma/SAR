//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction teste les missions chargées
//////////////////////////////////////////////////////////////////
//if (!isServer) exitWith{};
_t = 15;
format ["début loadercheck %1",missionsf] spawn z_smsg;
while {true} do {
  if (count missionsf > 0) then {call z_fnc_loadereasy;};  
  sleep _t;
//  hint format  ["time %1 ",time];
  if ((Difficulty==0)&& (nb_missions_moyennes_chargees==0) && (nb_missions_difficiles_chargees==0)) then {
/*    if ((nb_missions_moyennes_chargees==0) && (time > 120)) then {call z_fnc_loadermedium;};
    if ((nb_missions_difficiles_chargees==0) && (time > 180)) then {call z_fnc_loaderhard;}; 
*/
    if (time > 20) then {call z_fnc_loadermedium;};
    if (time > 80) then {call z_fnc_loaderhard;};
  };

  if ((Difficulty==2) && (count missionsm > 0)) then {call z_fnc_loadermedium;};

  if ((Difficulty==3) && (count missionsd > 0)) then {call z_fnc_loaderhard;};

};