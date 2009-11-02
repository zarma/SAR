//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
// initializations of AI teams
//////////////////////////////////////////////////////////////////
private ["_idx"];
//format ["z_teams"] call z_smsg;

z_teamammo = [];
_idx = 0;
_loop=true;
while {(_loop)} do { 
	_idx = _idx + 1;
	call compile format ["
	if (isnil ('vammo%1')) then {_loop=false;}
	else {
		_element = [vammo%1];
		vammo%1 setvariable ['status','waiting',true];
		z_teamammo = z_teamammo + _element;
	};
	
	",_idx];
};
while {(count z_teamammo)>0} do {
//	format ["test waiting "] call z_smsg;
	{		
		_status = _x getvariable 'status';
		format ["%1 %2",_x,_status] call z_smsg;
		if (_status=='waiting') then {
			hndl = [_x] execVM "z_scripts\z_vehammo.sqf";
			_v = _x;
			_v addeventhandler ["FiredNear", {[_v,"stop"] execVM "z_scripts\z_FiredNear.sqf";}];
		};
	} foreach z_teamammo;
	sleep 20;
};

//z_teamdrug = [];
//_idx = 0;
//_loop=true;
//while {(_loop)} do { 
//	_idx = _idx + 1;
//	call compile format ["
//	if (isnil ('vdrug%1')) then {_loop=false;}
//	else {
//		_element = [vdrug%1];
//		vdrug%1 setvariable ['status','waiting',true];
//		z_teamdrug = z_teamdrug + _element;
//	};
//	
//	",_idx];
//};
//
////format ["z_teamdrug %1",z_teamdrug] call z_smsg;
//
//{
//	if (_x getvariable 'status'=='waiting') then {
//	//	format ["waiting %1",_x] call z_smsg;
//		hndl = [_x] execFSM "z_fsm\z_vehdrug.fsm"; 
//	};
//} foreach z_teamdrug;

