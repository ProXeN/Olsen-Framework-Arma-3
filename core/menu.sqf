private ["_info"];

player createDiarySubject ["FW_Menu", "Simulatio Framework"];

_info = "
<font size='18'>Welcome to the Simulatio Framework!</font><br/>
The Simulatio Framework is a fork of Olsen Framework designed for ArmA 3. It supports modules and is easy to configure.<br/>
<br/>
Find out more about the framework on GitHub.<br/>
github.com/ProXeN/Simulatio-Framework-Arma-3<br/>
";

player createDiaryRecord ["FW_Menu", ["Framework Info", _info]];
