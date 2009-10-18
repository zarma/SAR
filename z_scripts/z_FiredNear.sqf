
private ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_act", "_param", "_driver", "_speed"];
_param = _this select 0;
_unit = _param select 0;
_firer = _param select 1; 
_distance =  _param select 2;
_weapon = _param select 3;
_muzzle = _param select 4;
_mode = _param select 5;
_ammo = _param select 6;
_act = _this select 1;

//hint format ["FiredNear %1 %2 % 3 %4 %5 %6 %7 %8" , _unit, _firer, _distance, _weapon, _muzzle,_mode, _ammo,_act]; 

if (_act=="stop") then {

	format ["Tir de semonce sur %1", typeof(_unit)] call z_smsg;
	
	_unit forceSpeed 0;
/*  _qt = 0.05;
  while {(fuel _unit)>_qt } do {
    _fuel = fuel _unit;
 //   format ["(fuel _unit) %1",fuel _unit] call z_smsg;
    _unit setFuel _fuel - _qt;
    sleep 3;
  };
  _unit setFuel 0;  */
	
};

if (true) exitWith {};

