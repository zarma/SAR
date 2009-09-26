//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

private ["_idx", "_Array", "_return"];

_Array = _this select 0;

_return = [];
{

_idx = floor (random ((count _Array)));
_return = [_return, _Array select _idx] call BIS_fnc_arrayPush;
_Array = [_Array, _idx]  call BIS_fnc_removeIndex;
}foreach _Array;

_return