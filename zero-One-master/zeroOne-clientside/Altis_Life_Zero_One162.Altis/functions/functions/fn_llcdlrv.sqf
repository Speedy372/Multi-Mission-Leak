private['_btcL','_lTD','_HNJ','_swz','_fTyS','_kMp','_kNi','_mYmj','_azxu'];disableSerialization;if (!isNil "nrFPB") exitWith {};_mYmj = [ format["Möchtest du wirklich respawnen?"], format["Respawn"], localize "STR_Global_Yes", localize "STR_Global_No" ] call BIS_fnc_guiMessage;if(!_mYmj) exitWith {};_kMp = player;respawne = true;2 cutText [" ","PLAIN"];["",0,0,1,0.1,0,1000] spawn BIS_fnc_dynamicText;hint "";(findDisplay 46) displayAddEventHandler ["KeyDown", "if((_this select 1) == 1) then {true};"];if(serverTime < 13500 || {serverTime > 15000 && serverTime < 20700}) then {  profileNamespace setVariable["zero_killed",playerSide];};_kMp setVariable["HRLubAWU",false,true];_kMp setVariable["fXFuzosIc",profileName,true];_kMp setVariable["ZiriOZh",playerSide,true];_kMp setVariable["GHdlZHW",false,true];_kMp setVariable["rZf",false,true];_kMp setVariable["uEkcJLUYu",false,true];_kMp setVariable["HMWNW",([3, 0] call zero_fnc_JNHrfnI),true];[1, 0] call zero_fnc_JNHrfnI;[] call zero_fnc_nbxA;PFAubPbI = nil;kmpA = ZzqdO;player setVariable["NZlNllHN", _kMp, true];Muiih = true;[1] call zero_fnc_VeDiANxeM;IoA = true;vSGiy = true;(findDisplay 46) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"];_azxu =400;HLHc = "CAMERA" camCreate (getPosATL _kMp);_kMp setDamage 1.356260;HLHc cameraEffect ["Internal","Back"];HLHc camSetTarget _kMp;HLHc camSetRelPos [0,3.5,4.5];HLHc camSetFovRange [1, 0.5];HLHc camSetFocus [50,0];HLHc camCommit 10;while { cam_shake2 = ppEffectCreate ["ColorCorrections", 500]; cam_shake2 < 0; cam_shake1 = ppEffectCreate ["DynamicBlur", _azxu]; cam_shake1 < 0} do { _azxu = _azxu + 1;};cam_shake1 ppEffectEnable true;cam_shake2 ppEffectEnable true;cam_shake2 ppEffectAdjust [1,0.4,0,0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0];cam_shake2 ppEffectCommit (random 10);cam_shake1 ppEffectAdjust [10];cam_shake1 ppEffectCommit 10;waitUntil {ppEffectCommitted cam_shake1 && ppEffectCommitted cam_shake2};11 cutRsc ["qztz","PLAIN"];_uiDisp = uiNamespace getVariable "qztz";_timer = _uiDisp displayCtrl 38401;_kNi = time + (90);while {time <= _kNi} do { if(isNull _uiDisp) then { 11 cutRsc ["qztz","PLAIN"]; _uiDisp = uiNamespace getVariable "qztz"; _timer = _uiDisp displayCtrl 38401; }; _timer ctrlSetStructuredText parseText format["<t color='#ff0000' t align='center' >Du wirst erst in %1 Minuten Wiedergeboren.</t>",[(_kNi - time),"MM:SS"] call BIS_fnc_secondsToString]; uiSleep 1;};_timer ctrlSetStructuredText parseText format["<t color='#8cff9b' t align='center'>Du wirst Wiedergeboren.</t>"];uiSleep 5;11 cutText["","PLAIN"];(findDisplay 46) displayRemoveAllEventHandlers "KeyDown"; (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call zero_fnc_xSlfN"]; if(!(playerSide in [west,independent]))then{[] call zero_fnc_nbxA;};[] call zero_fnc_SLSASFZ;rnX = true;YPCst = [];if(count nLivuo != 0) then { { _house = nearestBuilding (call compile format['%1', _x select 0]); YPCst pushBack _house; } foreach nLivuo;};if(!isNil "aAbyZPF") then { _house = nearestBuilding (call compile format["%1", aAbyZPF]); YPCst pushBack _house;};Muiih = false;[] call zero_fnc_pLpTzv;