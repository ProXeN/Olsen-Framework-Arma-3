PRX_LMAO = {
	_line1 = [groupID (group player), "HQ aquí " + groupID (group player) + ". Hemos localizado el objetivo. Procedemos a eliminarlo."];
	_line2 = ["HQ", "Recibido " + groupID (group player) + ". Procedan y vuelvan a base. Corto."];
	[[_line1,_line2],"SIDE",0.10,true] spawn FNC_SIMPLECONV;
};

IS_Conversacion = {
	params ["_npc"];
  if (player distance _npc < 20) then {
    _line1 = ["Golf Oscar Delta", "Hola tio. Esto es el constructor. Es nuestro programa de carga.", _npc];
    _line2 = ["Golf Oscar Delta", "Está guapo ¿No?", _npc];
    _line3 = ["Golf Oscar Delta", "¡Cargamos lo que sea! Ropa, armas, entrenamientos simulados...", _npc];
    _line4 = ["Golf Oscar Delta", "El pepinismo es intensísimo en este lugar.", _npc];
    _line5 = ["Golf Oscar Delta", "Buena suerte tio, y que Dios te bendiga.", _npc];
    [[_line1, _line2, _line3, _line4, _line5],"DIRECT",0.10] spawn fnc_simpleConv;
  };
};

IS_Intel = {
  hint "Te has bajado un archivo. Mira el Briefing para consultarlo"; 
  player createDiaryRecord ["Diary", ["Archivo Descargado","<img image='images\archivo.jpg' width='400' height='250'/>"]];
};