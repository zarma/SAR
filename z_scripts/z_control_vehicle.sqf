//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//  called by addaction
//  _obj setvariable ['status','policecontroling',true];
//	_act1 = _obj addAction["Control vehicle","z_scripts\z_control_vehicle.sqf", [_obj,"start"], 1, false, false];
// 
//////////////////////////////////////////////////////////////////

private ["_params","_obj","_act","_nb","_stop"];
_params = _this select 3;
_obj = _params select 0; // Object to control
_act = _params select 1; // action "start" or "stop" control, or "mark" to set a marker on the object;

format["_params %1 ", _params] call z_smsg;
if (_act=="start") then {
  // _obj setVariable ["status", _var, true]; "policecontroling" when call this script
  // "controlled","controlstopped","controllerdead"
  _nb = floor(10 + (random 10)); // nombre d'itérations pour la controle
  _stop = player addAction["Stopper le contrôle","z_scripts\z_control_vehicle.sqf",[_obj,"stop"], 1, false, false];
  for "_it" from 1 to _nb do {
		if (!alive player) exitwith {_obj setVariable ["status", "controllerdead", true];player removeAction _stop;};
		player playMove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 3.0;
		waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
		"controle en cours..." call z_smsg;
		if ((_obj getVariable "status")=="controlstopped") exitwith {"contrôle interrompu..." call z_smsg;player removeAction _stop;};
  };
  _obj setVariable ["status", "controlled", true];
  if ((_obj getVariable "status")=="controlled") then
  {
  		"contrôle terminé" call z_smsg;
  };
  player removeAction _stop;
};
if (_act=="stop") then {
  _obj setVariable ["status", "controlstopped", true];
};
if (_act=="release") then {
  _obj setVariable ["status", "released", true];
};

if (_act=="mark") then {
	nil=[_obj,"mil_triangle","ColorRed"] execVM "z_scripts\z_vehmarker.sqf";
};

