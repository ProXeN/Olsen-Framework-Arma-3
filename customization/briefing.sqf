#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("OPORD")
	<img image='images\briefingportada.jpg' width='367' height='206'/>
	<br/>
	<br/><font size='15' face='RobotoCondensedBold' color='#FFA500'>SITUACIÓN</font>
	<br/><font size='13'>
	La pequeña isla de Altis lleva en guerra civil casi dos años. El gobierno ha caído y ahora la isla se rige por 'Warlords' Señores de la guerra. 
	Uno de estos 'Warlords' nos ha contratado para mover la balanza hacia su favor... Pagando claro está. La Iniciativa se infiltará en la isla y eliminará los almacenes de suministros y municiones de sus rivales..</font>
	<br/>
	<br/>
	<img image='images\briefing.jpg' width='367' height='206'/>
	<br/>
	<br/><font size='14'>A. FUERZAS ENEMIGAS</font>
	<br/><font size='13'>LA FUERZA ENEMIGA CONSISTE EN ELEMENTOS DE UN BATALLÓN MOTORIZADO INSURGENTE QUE HA ESTABLECIDO POSICIONES DEFENSIVAS A LO LARGO DE LA CORDILLERA.</font>
	<br/>
	<br/><font size='13'>EL ENEMIGO CUENTA CON VEHÍCULOS BMP Y T-72, ARMAS LIGERAS, RPGS Y APOYO DE MORTEROS. APROXIMADAMENTE CUENTAN CON UN PELOTÓN DE INFANTES MÁS ELEMENTOS ADICIONALES DE APOYO.</font>
	<br/>
	<br/>
	<br/><font size='14'>B. FUERZAS ALIADAS</font>
	<br/><font size='13'>LAS FUERZAS ALIADAS CONSISTEN EN TRES EQUIPOS DE FUEGO CON APOYO AÉREO AÑADIDO.</font>
	<br/>
	<br/>
	<br/><font size='14'>C. TERRENO Y CLIMA</font>
	<br/><font size='13'>CLIMA NUBLADO, VISIBILIDAD MODERADA.</font>
	<br/>
	<br/>
	<br/>
	<br/><font size='15' face='RobotoCondensedBold' color='#FFA500'>MISIÓN</font>
	<br/><font size='14'>EQUIPOS ALPHA Y BRAVO TOMARÁN LA POBLACIÓN EN PUNTO RAPTOR MIENTRAS QUE EL EQUIPO CHARLIE INTERCEPTARÁ LA QRF EN MSR PAPA.</font>
	<br/>
	<br/>
	<br/>
	<br/><font size='15' face='RobotoCondensedBold' color='#FFA500'>EJECUCIÓN</font>
	<br/><font size='14'>A. OPERACIÓN</font>
	<br/><font size='13'>FASE 1: INSERCIÓN EN ÁREA DE OPERACIONES.</font>
	<br/><font size='13'>FASE 2: PREPARAR EMBOSCADA EN MSR PAPA.</font>
	<br/><font size='13'>FASE 3: TOMAR PUNTO RAPTOR Y ELIMINAR QRF.</font>
	<br/>
	<br/><font size='14'>B. RUTAS</font>
	<br/><font size='13'>A DISCRECIÓN DE MANDO</font>
	<br/>
	<br/><font size='14'>C. HORARIO</font>
	<br/><font size='13'>EL ATAQUE DEBERÍA COMPLETARSE ANTES DE LA MEDIANOCHE.</font>
	<br/>
	<br/>
	<br/>
	<br/><font size='15' face='RobotoCondensedBold' color='#FFA500'>SOPORTE Y APOYO</font>
	<br/><font size='14'>A. SOPORTE</font>
	<br/><font size='13'>YAHBRON A LA ESPERA.</font>
	<br/>
	<br/><font size='14'>B. APOYO</font>
	<br/><font size='13'>EXPLOSIVOS ADICIONALES EN PUNTO X-RAY.</font>
	<br/>
	<br/>
	<br/>
	<br/><font size='15' face='RobotoCondensedBold' color='#FFA500'>ESTRUCTURA E INDICATIVOS</font>
	<br/><font size='14'>A. FRECUENCIAS</font>
	<br/><font size='13'>PRC152 - CANALES</font>
	<br/><font size='13'>PRE.1 - RAPTOR</font>
	<br/><font size='13'>PRE.2 - CHARLIE</font>
	<br/><font size='13'>PRE.3 - LIMA</font>
	<br/><font size='13'>PRE.4 - MEDEVAC</font>
	<br/>
	<br/>
	<br/><font size='13'>PRC343 - CANALES</font>
	<br/><font size='13'>PRE.1 - ALPHA</font>
	<br/><font size='13'>PRE.2 - BRAVO</font>
	<br/><font size='13'>PRE.3 - CHARLIE</font>
	<br/><font size='13'>PRE.4 - MEDEVAC</font>
	<br/>
	<br/>
	<br/><font size='14'>B. INDICATIVOS</font>
	<br/><font size='13'>RAPTOR - POBLACIÓN</font>
	<br/><font size='13'>SIGMA - EXPLOSIVOS ADICIONALES </font>
ENDTAB;
}; //End of west case

}; //End of switch
	
NEWTAB("IV. Notas de Misión:") //This is shown for everyone
Misión de prueba.
ENDTAB;

DISPLAYBRIEFING();