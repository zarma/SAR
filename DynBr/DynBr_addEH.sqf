//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: -eutf-Myke
//////////////////////////////////////////////////////////////////
private ["_unit"];
if (! isServer) exitwith {};
_unit = _this select 0;

if (_unit == player) exitWith {};

_unit addeventhandler ["killed", {_this execVM "DynBr\DynBr_remove.sqf"}];
if !(_unit iskindof "Man") then
	{
		{
		_x addeventhandler ["killed", {_this execVM "DynBr\DynBr_remove.sqf"}];
		}
	foreach crew _unit;
	};
