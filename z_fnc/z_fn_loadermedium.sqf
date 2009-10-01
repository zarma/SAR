//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction gère les missions moyennes
//////////////////////////////////////////////////////////////////
//if (!isServer) exitWith{};
if (count missionsm==0) exitWith{};

//[(side player),"HQ"] sidechat format["missions_moyennes_chargees  %1 %2 ", missions_moyennes_chargees,nb_missions_moyennes_chargees];
//[(side player),"HQ"] sidechat format["missionsm  %1 %2 ", missionsm,Z_MAX_MISSIONS_MOYENNES];

if (nb_missions_moyennes_chargees < Z_MAX_MISSIONS_MOYENNES) then 
{
  missions_moyennes_chargees = [missions_moyennes_chargees, missionsm select 0] call BIS_fnc_arrayPush;
  call compile format["['%1'] execVM 'z_missions\%1.sqf';",missionsm select 0];
  nb_missions_moyennes_chargees = nb_missions_moyennes_chargees + 1;
  missionsm = [missionsm, 0]  call BIS_fnc_removeIndex;
};