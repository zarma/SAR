// -----------------------------------------------
// Author: =[A*C]= Z
// Inspired from work of :
// =[A*C]= code34 nicolas_boiteux@yahoo.fr
// warcontext 
// Enhancement with Xeno script x_playerweapons.sqf
// Client Side logic
// -----------------------------------------------

//sickboy's code modified by _xeno 
T_INIT 	= false;
T_Server 	= false; 
T_Client 	= false; 
T_JIP 	= false;

if (isServer) then 
{
	T_Server = true;
	if (!isNull player) then {T_Client = true};
	T_INIT = true;
} else {
	T_Client = true;
	if (isNull player) then 
	{
		T_JIP = true;
		[] spawn {waitUntil {!isNull player};T_INIT = true};
	} else {
		T_INIT = true;
	};
};
waitUntil {T_INIT};

if (!local player) exitWith {};

private [
	"_position", 
	"_magazines",
	"_weapons",
	"_primw",
	"_muzzles"
	];

// tableau des missions réussies 
// tableau des missions chargées
// tableau des entrées dans le briefing
// essayer avec l'adition d'un élément dans un tableau
	zclientinitialised = false;

	"missions_faciles_chargees" addPublicVariableEventHandler {
    format ["missions_faciles_chargees %1",missions_faciles_chargees] call z_smsg;
	};
	
	"missions_moyennes_chargees" addPublicVariableEventHandler {
    format ["missions_moyennes_chargees %1",missions_moyennes_chargees] call z_smsg;
	};

	"missions_difficiles_chargees" addPublicVariableEventHandler {
    format ["missions_difficiles_chargees %1",missions_difficiles_chargees] call z_smsg;
	};

	// creation du journal sur la carte
//	_diary = player createDiaryRecord ["Diary", ["Briefing", "Chernarus is at war since few months. You are one of the army group that fight against the russian troups. Your base is located at few miles of the Chernarus coast. You must search and destroy the Enemy. The enemy zone is blue on map. Your mission starts on the <marker name=""bonhomme"">U.S.S. Bon Homme Richard</marker>, be quiet, don't abuse of airplanes, and everything should be ok. Good luck!"]];

	// code a executer quand le joueur respawn
	// recuperation des armes identiques a avant la mort
	torespawn = {
		_weapons = weapons player;
		_magazines = magazines player;
		waitUntil {alive player};
		removeAllItems player;
		removeAllWeapons player;
		{player addMagazine _x;} forEach _magazines;
		{player addWeapon _x;} forEach _weapons;
		_primw = primaryWeapon player;
		if (_primw != "") then {
		        player selectWeapon _primw;
			_muzzles = getArray(configFile>>"cfgWeapons" >> _primw >> "muzzles");
			player selectWeapon (_muzzles select 0);
		};
	};

	player addeventhandler ['killed', {
		hidebody (_this select 0);
		nil = [] spawn torespawn;
	}];
/*
	// Init mission for JIP players
	if (wcinitialised) then {
		nil = [] spawn WC_fnc_createmission;
	};

	// sleep for ignoring first briefing trigger by eventhandler
	sleep 120;
*/
	zclientinitialised = true;