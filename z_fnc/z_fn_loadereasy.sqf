//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Cette fonction gère les missions faciles
//////////////////////////////////////////////////////////////////
//if (!isServer) exitWith{};


format ["nb_missions_faciles_chargees %1",nb_missions_faciles_chargees] call z_smsg;
format ["Z_MAX_MISSIONS_FACILES %1",Z_MAX_MISSIONS_FACILES] call z_smsg;
if (nb_missions_faciles_chargees < Z_MAX_MISSIONS_FACILES) then 
{
  missions_faciles_chargees = [missions_faciles_chargees, missionsf select 0] call BIS_fnc_arrayPush;
  format ["missions_faciles_chargees %1",missions_faciles_chargees] call z_smsg;
  call compile format["['%1'] execVM 'z_missions\%1.sqf';",missionsf select 0];
  nb_missions_faciles_chargees = nb_missions_faciles_chargees + 1;
  missionsf = [missionsf, 0]  call BIS_fnc_removeIndex;
};