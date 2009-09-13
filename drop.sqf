//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// Drop of cargo
//////////////////////////////////////////////////////////////////
private ["_veh", "_alt", "_grp", "_nbeject", "_nueject"];


_veh = _this select 0; // vehicule
_alt = _this select 1; // min altitude to drop
_nbeject = _this select 2; // number of unit to eject

_grp = assignedcargo _veh;
_typeVeh = typeof _veh;
_nueject = 0;
_sleeptime = 0.5;
[(side player),"HQ"] sidechat format["%1 group %2 type %3",_veh,_grp, _typeVeh];
 
{
  _nueject = _nueject + 1;
	_x action ["EJECT",_veh];
	unassignvehicle _x;
	[(side player),"HQ"] sidechat format["eject %1 number %2",_veh,_nueject];
	_rem = _nueject mod _nbeject;
	if (_rem == 0 ) then {_sleeptime = 5 + (random 15)};
	sleep _sleeptime;
	_sleeptime = 0.5;
	

} forEach _grp;


if (true) exitWith {};