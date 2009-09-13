//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////

_mk =  _this select 0; // marqueur associé au trigger
_trigger = _this select 1;
_who = list _trigger;
[(side player),"HQ"] sidechat format["who : %1 $ %2 ", _mk,_who];


	switch (_mk) do {

// red zone
		case "mk115040":	
		{
			_mk setMarkerColorLocal "ColorOrange";
			call compile format["o%1 settaskstate 'Succeeded';",_mk];			
		};
		case "mk096018":	
		{
		//	call compile format ["%1radio = createVehicle [""CampEastC"", %2, [], 0, """"];", _markername, _position]; 
		};

		default
		{
		};
	};






if (true) exitWith {};