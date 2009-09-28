//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction teste les missions chargées
//////////////////////////////////////////////////////////////////

_t = 5;
[(side player),"HQ"] sidechat format["début loadercheck "];
while {true} do {
  [(side player),"HQ"] sidechat format["loadercheck "];
  if (count missionsf > 0) then {call z_fnc_loadereasy;};  
  sleep _t;
  
  if (Difficulty==0) then {
  //call z_fnc_loadermedium;
  hint "à coder ";
  };

  if ((Difficulty==2) && (count missionsm > 0)) then {call z_fnc_loadermedium;};

  if ((Difficulty==3) && (count missionsd > 0)) then {call z_fnc_loaderhard;};

};