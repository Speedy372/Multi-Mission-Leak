private['_kNi','_sAj','_zij','_HppJ','_KWt','_hdRh','_VJc'];_kNi = param[0,-1,[0]]; _sAj = param[1,false,[false]];if(_kNi isEqualTo -1) exitWith {systemChat "fn_gangEroberungTimer -1"};disableSerialization;_kNi = serverTime + (_kNi * 60);6 cutRsc ["AHt","PLAIN"];_zij = uiNamespace getVariable "AHt";_HppJ = _zij displayCtrl 38301;while {true} do { if(isNull _zij) then { 6 cutRsc ["AHt","PLAIN"]; _zij = uiNamespace getVariable "AHt"; _HppJ = _zij displayCtrl 38301; }; if(round(_kNi - serverTime) < 1) exitWith {}; if(!alive player) exitWith {}; _HppJ ctrlSetText format["%1",[(_kNi - serverTime),"MM:SS.MS"] call BIS_fnc_secondsToString]; uisleep 0.08;};6 cutText["","PLAIN"];if(!alive player) exitWith {};if(_sAj) then { uiSleep random(1); if(!(zero_gang_flag getVariable["gangFight",-1] > 0)) then { zero_gang_flag setVariable["gangFight",serverTime,true]; _VJc = createMarker ["gang_angriff",[21973.5,21081.1,0.0014286]]; _VJc setMarkerColor "ColorYellow"; _VJc setMarkerText "!ACHTUNG! Angriff !ACHTUNG!"; _VJc setMarkerType "mil_warning"; }; _KWt = zero_gang_flag getVariable "gangAnnounce"; _hdRh = format["<t color='#cc1f00' size='2' align='center'>Der Kampf beginnt!</t><br/>Folgende Gangs sind beteiligt:<br/>"]; if(!((_KWt select 1) isEqualTo [])) then { { if(!isNull _x && count (units _x) > 0) then { _hdRh = _hdRh + format["%1<br/>", (_x getVariable["HNCqyH",[nil,""]]) select 1]; }; } forEach (_KWt select 1); }; hint parseText _hdRh; titleText ["Der Kampf beginnt!","PLAIN"]; [30] spawn zero_fnc_ndls;}else{ if((zero_gang_flag getVariable["gangControl","-1"]) != (((group player) getVariable["HNCqyH",["-1"]]) select 0)) then { hint parseText "Deine Gang hat den Kampf um die Gangeroberung verloren!<br/>Die Kampfhandlungen sind einzustellen!"; titleText ["Deine Gang hat den Kampf um die Gangeroberung verloren!","PLAIN"]; uiSleep random(1); if((group player) getVariable["gangAnnounce",false]) then { (group player) setVariable["gangAnnounce",nil,true]; }; uiSleep random(1); if(!(zero_gang_flag getVariable["gangFightEnded",false])) then { zero_gang_flag setVariable["gangFightEnded",true,true]; zero_gang_flag setVariable["gangFight",nil,true]; zero_gang_flag setVariable["gangAnnounce",nil,true]; (group player) setVariable["gangAnnounce",nil,true]; deleteMarker "gang_angriff"; }; }else{ hint parseText "Deine Gang hat den Kampf um die Gangeroberung gewonnen!<br/>Du kannst nun die Vorteile nutzen!"; titleText ["Deine Gang hat den Kampf um die Gangeroberung gewonnen!","PLAIN"]; uiSleep random(1); if(!(zero_gang_flag getVariable["gangFightEnded",false])) then { zero_gang_flag setVariable["gangFightEnded",true,true]; zero_gang_flag setVariable["gangFight",nil,true]; zero_gang_flag setVariable["gangAnnounce",nil,true]; (group player) setVariable["gangAnnounce",nil,true]; zero_gang_flag setVariable["gangControlGroup",(group player), true]; deleteMarker "gang_angriff"; hc_gangEroberung = ((group player) getVariable["HNCqyH",["-1"]]) select 0; HC1_owner publicVariableClient "hc_gangEroberung"; hc_gangEroberung = nil; }; uiSleep random(1); if((group player) getVariable["gangAnnounce",false]) then { (group player) setVariable["gangAnnounce",nil,true]; }; };};