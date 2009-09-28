//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//  appelé par addaction
// _params select 0           objet fouillé
//////////////////////////////////////////////////////////////////
//if !(isserver) exitwith {};
private ["_params","_obj"];
_params = _this select 3;
_obj = _params select 0; // objet fouillé


//[(side player),"HQ"] sidechat format["_obj fouillé %1 ", _obj];
z_fouille_etat = 0; // 0 avant la fouille, 1 fouillé, 2 stoppée, 3 joueur mort
_nb = floor(10 + (random 10)); // nombre d'itérations pour la fouille

_stop = player addAction["Stopper la fouille","z_scripts\z_fouille_stop.sqf"];
for "_it" from 1 to _nb do {
  if (!alive player) exitwith {z_fouille_etat = 3;player removeAction _stop;};
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 3.0;
	waitUntil {animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
	"Fouille en cours..." call z_smsg;
	if (z_fouille_etat == 2) exitwith {"Fouille interrompue..." call z_smsg;player removeAction _stop;};
};

if (z_fouille_etat == 0) then
{
z_fouille_etat = 1;
}else {
_obj setVariable ["fouille", 1, true];
"Fouille terminée" call z_smsg;
}
;

