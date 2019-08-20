/* build a condition from the conditions in the given mission flow that we
 * can use for waitUntil
 */

private _cond = "";
private _i = 0;

for "_i" from 0 to (count _this - 1) do {
	private _current = _this select _i;

	if (_i != 0) then {
		_cond = format ["%1 or", _cond];
	};

	_cond = format ["%1 (%2)", _cond, _current select 0];
};

_cond;