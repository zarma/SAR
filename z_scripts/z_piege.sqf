//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// _this select 0    objet piégé
// _this select 1    rayon de protection
// _this select 2    fiabilite
//////////////////////////////////////////////////////////////////
if !(isserver) exitwith {};
private ["_fiabilite","_obj"];
_params = _this;
_obj = _this select 0; // objet piégé
_rayon = _this select 1; // rayon de protection


//[(side player),"HQ"] sidechat format["count _this  %1 ", (count _this)];

_pos = getpos _obj;


if ((count _this) > 2) then
{
  _fiabilite = (_this select 2) + random 1; // fiabilité du piège
} 
else 
{ 
  _fiabilite =  random 1; // fiabilité du piège
};


//[(side player),"HQ"] sidechat format["fiabilité piège calcul %2  ",_fiabilite];

/////* SMOKE*/////

Z_fnc_smoke = {
  [_vburn,[0.45,0.67,0.5,0]] spawn {
  	_sh=_this select 0;
  	_col=_this select 1;
  	_c1=_col select 0;
  	_c2=_col select 1;
  	_c3=_col select 2;
  	
  //	sleep (20+random 1);
  	_source = "#particlesource" createVehicleLocal getpos _sh;
  	_source setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20, [0, 0, 0],
  					[0.2, 0.1, 0.1], 0, 1.277, 1, 0.025, [0.1, 2, 6], [[_c1, _c2, _c3, 0.2], [_c1, _c2, _c3, 0.05], [_c1, _c2, _c3, 0]],
  					 [1.5,0.5], 1, 0.04, "", "", _sh];
  	_source setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
  	_source setDropInterval 0.50;
  	
  	_source2 = "#particlesource" createVehicleLocal getpos _sh;
  	_source2 setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 8, 0], "", "Billboard", 1, 20, [0, 0, 0],
  					[0.2, 0.1, 0.1], 0, 1.277, 1, 0.025, [0.1, 2, 6], [[_c1, _c2, _c3, 1], [_c1, _c2, _c3, 0.5], [_c1, _c2, _c3, 0]],
  					 [0.2], 1, 0.04, "", "", _sh];
  	_source2 setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.2], 0, 0, 360];
  	_source2 setDropInterval 0.50;
  	
  	sleep (random 30);
  	deletevehicle _source;
  	deletevehicle _source2;
  };
};


/////* SMOKE-END*/////


if (_fiabilite > 0.9) then
{
  _t = createTrigger["EmptyDetector",_pos];
  _t setTriggerArea [_rayon,_rayon,0,False];
  zt_piege =  _obj;
  _t setTriggerStatements ["((getpos (thislist select 0)) select 2 < 0.2)","[zt_piege,(thislist)] execVM 'z_scripts\z_piege_explose.sqf'",""];
  _t setTriggerActivation ["WEST","PRESENT",True];
}else {
  if (_fiabilite > 0.2)then
  {
  //  [_obj] call Z_fnc_smoke; Modifier les fumées
  };
};