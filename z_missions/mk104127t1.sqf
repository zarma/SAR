
/////// Gestion des tâches
private ["_task"];
_task = mk104127t;

switch (_task) do {
case 1:
  {
  [(side player),'HQ'] sidechat format["trouver et fouillez une golf rouge dans la ville."];
  o1mk104127 = player createSimpleTask ["o1mk104127", omk104127];
  o1mk104127 setSimpleTaskDescription["Trouvez et fouillez une Golf rouge.", "Golf Rouge", ""];
  };
case 2:
  {
  };
};

