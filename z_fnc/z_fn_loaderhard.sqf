//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction gère les missions difficiles
//////////////////////////////////////////////////////////////////

private ["_return"];
if (!isServer) exitWith{};
//[(side player),"HQ"] sidechat format["missions_difficiles_chargees  %1 %2 ", missions_difficiles_chargees,nb_missions_difficiles_chargees];
//[(side player),"HQ"] sidechat format["missionsd  %1 %2 ", missionsd,Z_MAX_MISSIONS_DIFFICILES];

if (nb_missions_difficiles_chargees < Z_MAX_MISSIONS_DIFFICILES) then 
{
  missions_difficiles_chargees = [missions_difficiles_chargees, missionsd select 0] call BIS_fnc_arrayPush;
  call compile format["['%1'] execVM 'z_missions\%1.sqf';",missionsd select 0];
  nb_missions_difficiles_chargees = nb_missions_difficiles_chargees + 1;
  missionsd = [missionsd, 0]  call BIS_fnc_removeIndex;
};