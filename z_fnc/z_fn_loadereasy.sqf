//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction gère les missions faciles
//////////////////////////////////////////////////////////////////

private ["_return"];
[(side player),"HQ"] sidechat format["missions_faciles_chargees  %1 %2 ", missions_faciles_chargees,nb_missions_faciles_chargees];
[(side player),"HQ"] sidechat format["missionsf  %1 %2 ", missionsf,Z_MAX_MISSIONS_FACILES];
if (nb_missions_faciles_chargees < Z_MAX_MISSIONS_FACILES) then 
{
  missions_faciles_chargees = [missions_faciles_chargees, missionsf select 0] call BIS_fnc_arrayPush;
  call compile format["['%1'] execVM 'z_missions\%1.sqf';",missionsf select 0];
  nb_missions_faciles_chargees = nb_missions_faciles_chargees + 1;
  missionsf = [missionsf, 0]  call BIS_fnc_removeIndex;
};