
private ["_veh1", "_veh2","_freePositions"];

_veh1 = _this select 0;
_veh2 = _this select 1;

//format ["typeof _veh1 %1",typeof _veh1] call z_smsg;
//hintSilent 'boat3 capturé';
_veh2 forceSpeed 0;
{
  
  _freePositions = _veh1 emptyPositions "cargo";
 // format ["_x %1 _freePositions %2",_x,_freePositions] call z_smsg;
 if (_freePositions==0) exitWith {format ["Plus de places à bord"] call z_smsg;};   
 _x setCaptive true;
  
  unassignVehicle _x;          
  _x assignAsCargo _veh1;
  sleep 2;
  _x moveInCargo _veh1;  
  sleep 2;    
  [_x] joinsilent group (driver _veh1) ;  
}
foreach crew _veh2;



if (true) exitWith {};

