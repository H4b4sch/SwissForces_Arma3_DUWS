_fob = _this select 0;


_fob addaction ["<t color='#ffbe1a'>Player stats</t>","dialog\info\info.sqf", "", 0, true, true, "", "_this == player"];
_fob addAction ["<t color='#ff0066'>HEAL (2CP)</t>", "heal.sqf", "", 0, true, true, "", "_this == player"];
if (support_armory_available) then {_fob addaction ["<t color='#ff0066'>Armory</t>","VAS\open.sqf", "", 0, true, true, "", "_this == player"];};
_fob addaction ["<t color='#15ff00'>FOB/Teleport</t>","dialog\fob\FOBmanageropen.sqf", "", 0, true, true, "", "_this == player"];
_fob addaction ["<t color='#99ff00'>Request units</t>","dialog\request.sqf", "", 0, true, true, "", "_this == player"];
_fob addaction ["<t color='#99ff00'>Squad manager</t>","dialog\squad\squadmng.sqf", "", 0, true, true, "", "_this == player"];
// _fob addaction ["<t color='#ff0066'>Request ammobox drop(2CP)</t>","support\fob_ammobox.sqf", "", 0, true, true, "", "_this == player"];
if (isServer) then {
_fob addaction ["<t color='#ffbe1a'>Rest (wait/save)</t>","savegame.sqf", "", 0, true, true, "", "_this == player"];
};
if (!isServer) then {
_fob addaction ["<t color='#ffbe1a'>Rest</t>","savegameClient.sqf", "", 0, true, true, "", "_this == player"];
};


