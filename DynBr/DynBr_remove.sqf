//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: -eutf-Myke
//////////////////////////////////////////////////////////////////
private ["_unit"];
if (! isServer) exitwith {};
_unit = _this select 0;
//[(side player),"HQ"] sidechat format["unité : %1 ", _unit];
sleep 10;
if (_unit iskindof "Man") then
	{		
		hidebody _unit;
		sleep 3;	
	};
deletevehicle _unit;
	
