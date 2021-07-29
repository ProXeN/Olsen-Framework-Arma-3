#define package "C_"

SET_GROUP(uniform) //Uniforme Básico
	["U_C_Man_casual_1_sick_F",
	 "U_C_Man_casual_3_sick_F",
	 "U_C_Man_casual_4_sick_F",
	 "U_C_Man_casual_5_sick_F",
	 "U_C_Man_casual_6_sick_F",
	 "U_C_Poloshirt_blue_sick",
	 "U_C_Poloshirt_burgundy_sick",
	 "U_C_Poloshirt_stripped_sick",
	 "U_C_Poloshirt_redwhite_sick",
	 "U_C_man_sport_2_sick_F"
	] call FNC_AddItemRandom;
END_GROUP;


case (package + "SICK"): { //Lider de Equipo
	ADD_GROUP(uniform);
	//_unit setFace selectRandom ["AfricanHead_01_sick", "AfricanHead_02_sick", "AfricanHead_03_sick"];
	//_unit setFace selectRandom ["TanoanHead_A3_01_sick", "TanoanHead_A3_02_sick", "TanoanHead_A3_03_sick", "TanoanHead_A3_04_sick", "TanoanHead_A3_05_sick", "TanoanHead_A3_06_sick", "TanoanHead_A3_07_sick", "TanoanHead_A3_08_sick"];
	_unit setFace selectRandom ["PersianHead_A3_01_sick", "PersianHead_A3_02_sick", "PersianHead_A3_03_sick"];
	_unit setDamage 0.5;
};


