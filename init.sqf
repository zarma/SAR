//////////////////////////////////////////////////////////////////
// Function file for Armed Assault 2
// Created by: =[A*C]= Z
//////////////////////////////////////////////////////////////////
Difficulty=Param1;
Hint format ["Difficulty %1",Difficulty] ;
// permet de mettre le point de respawn au niveau du sol dans un batiment
"respawn_west" setMarkerPosLocal [markerPos "respawn_west" select 0, markerPos "respawn_west" select 1, 0];

// initialisation des fonctions

ZF_stringToConfig  = compile preprocessFile "ca\modules\ambient_combat\data\scripts\functions\convertGroupStringToConfig.sqf";
Z_fnc_burn = compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";

Z_fnc_randomArray = compile preprocessFile "z_fnc\z_fn_randomarray.sqf";
z_fnc_loadereasy = compile preprocessFile "z_fnc\z_fn_loadereasy.sqf";
z_fnc_loadermedium = compile preprocessFile "z_fnc\z_fn_loadermedium.sqf";
z_fnc_loaderhard = compile preprocessFile "z_fnc\z_fn_loaderhard.sqf";
z_fnc_loadercheck = compile preprocessFile "z_fnc\z_fn_loadercheck.sqf";
nul=[] execVM "z_fnc\z_fn_chat.sqf";

// distance de vue
viewDist = 3000;
setViewDistance(viewDist);

// terrain sans herbe
setTerrainGrid 50;

// initialisation du briefing
nul=[] execVM "briefing.sqf";
// initialisation des patrouilles ennemies
nul=[] execVM "patrols.sqf";

// compositions
nul= ["weapon_store_us1", 0, markerPos "store1"] execVM "Createcomposition.sqf";

//gestion des markeurs
sleep 5;

ok=false;
okmk115040=false;

centerW = createCenter west;
centerE = createCenter east;
centerG = createCenter resistance;
centerC = createCenter civilian;

// initialization of markers array
nul=[] execVM "initmarkers.sqf";