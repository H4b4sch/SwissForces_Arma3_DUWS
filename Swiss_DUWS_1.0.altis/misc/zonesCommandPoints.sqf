// CP every 10 mins (600) 
// 5 CP per Zone under control

_undercontrol = true;

 

while {_undercontrol} do {

 waitUntil {zoneundercontrolblu > 0};  // make sure there is at least 1 zone under control
 sleep 1800; 
 waitUntil {zoneundercontrolblu > 0}; // After 10 Minutes, you'll get cp as soon as theres a zone under control
 ["CPzonehold",[(zoneundercontrolblu*5),zoneundercontrolblu]] call bis_fnc_showNotification;
 commandpointsblu1 = commandpointsblu1 + (zoneundercontrolblu*5);
 publicVariable "commandpointsblu1";
 ctrlSetText [1000, format["%1",commandpointsblu1]];
 
};

