#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situación:")
<font color='#BBBBBB' size='16' face='PuristaBold'>This is an example header:</font><br/>
<br/>
Example text.<br/>
<br/>
This is how you create a <marker name='markerName'>marker</marker>.
ENDTAB;

NEWTAB("A. Fuerzas Enemigas:")
//Text goes here
ENDTAB;

NEWTAB("B. Fuerzas Aliadas:")
- 4 Escuadras CTS
ENDTAB;

NEWTAB("II. Misión:")
- Objetivo 1<br/>
- Objetivo 2
ENDTAB;

NEWTAB("III. Soporte:")
- Dron YABHON-R3
ENDTAB;
}; //End of west case

}; //End of switch
	
NEWTAB("IV. Notas de Misión:") //This is shown for everyone
Misión de prueba.
ENDTAB;

DISPLAYBRIEFING();