
private ["_veh","_pos","_unit"];


_veh = _this select 0;
_pos = _this select 1; 
_unit =  _this select 2;

hint format ["getout %1 %2 % 3",_veh,_pos,_unit];
// tester l'altitude
[_unit] exec "ca\air2\halo\data\Scripts\HALO_getout.sqs";

if (true) exitWith {};

