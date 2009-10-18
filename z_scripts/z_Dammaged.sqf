
private ["_unit", "_selectionName", "_damage","_act"];

_param = _this select 0;
_unit = _param select 0;
_selectionName = _param select 1; 
_damage =  _param select 2;
_act = _this select 1;

//hint format ["Dammaged %1 %2 " , _this select 0, Damage _unit];

if (_act=="stop") then {
 // format ["_act %1",_act] call z_smsg;
  _smoke = "SmokeShell" createVehicle position _unit;
  _smoke attachTo [_unit,[0,-1.7,-0.2]];
  _qt = 0.05;
  while {(fuel _unit)>_qt } do {
    _fuel = fuel _unit;
  //  format ["(fuel _unit) %1",fuel _unit] call z_smsg;
    _unit setFuel _fuel - _qt;
    sleep 3;
  };
  _unit setFuel 0;  
};



if (true) exitWith {};

