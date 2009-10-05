//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction teste les missions chargées
//////////////////////////////////////////////////////////////////
//if (!isServer) exitWith{};
_t = 15;
//format ["début loadercheck %1",missionsf] spawn z_smsg;
while {true} do {
  if (count missionsf > 0) then {call z_fnc_loadereasy;};  
  sleep _t;
//  hint format  ["time %1 ",time];
  if (Difficulty==0) then {
/*   time 120 180
*/
    if (time > 20) then {call z_fnc_loadermedium;};
    if (time > 80) then {call z_fnc_loaderhard;};
  };

  if ((Difficulty==2) && (count missionsm > 0)) then {call z_fnc_loadermedium;};

  if ((Difficulty==3) && (count missionsd > 0)) then {call z_fnc_loaderhard;};

};