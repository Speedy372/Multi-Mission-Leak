private['_kMp','_yyua','_LPoU','_LkwK','_pkSz','_Mos'];_kMp = _this select 0;if(_kMp != player) exitWith {};_yyua = _this select 1;_LPoU = _this select 2;_LkwK = _this select 3;_apply = _this select 4;if(dialog) then {closeDialog 0;};if((_kMp distance _LkwK) > 30) exitWith {[format ["SUSPICOUS: %1(%3) hat von %2(%4) das Item %6 über eine Distanz von %5 erhalten", _kMp getVariable["realname", name _kMp], _LkwK getVariable["realname", name _LkwK], getPlayerUID _kMp, getPlayerUID _LkwK, (_kMp distance _LkwK), _LPoU],"zo_log",false,false] call zero_fnc_fdEkiHoij;};if(_apply == "med_marijuana") exitWith { titleText[format ["Du hast eine Dosis medizinisches Marihuana verabreicht bekommen."],"PLAIN"]; [] spawn zero_fnc_EIXjIUCE;};if(_apply == "narcosis") exitWith { titleText[format ["Du hast eine Narkose verabreicht bekommen."],"BLACK OUT"]; 1 fadeSound 0; [] spawn { uiSleep 10; titleText["","BLACK IN"]; 1 fadesound 1; };};_pkSz = [_LPoU,(parseNumber _yyua),KtV,dZldvdq] call zero_fnc_Prk;if(_pkSz != (parseNumber _yyua)) then { if(([true,_LPoU,_pkSz] call zero_fnc_VJhZQOJ)) then { hint format[localize "STR_MISC_TooMuch_3",_LkwK getVariable["aOsyc",name _LkwK],_yyua,_pkSz,((parseNumber _yyua) - _pkSz)]; [_LkwK,_LPoU,str((parseNumber _yyua) - _pkSz),_kMp] remoteExecCall ["zero_fnc_jJj",_LkwK]; } else { [_LkwK,_LPoU,_yyua,_kMp,false] remoteExecCall ["zero_fnc_jJj",_LkwK]; };} else { if(([true,_LPoU,(parseNumber _yyua)] call zero_fnc_VJhZQOJ)) then { _Mos = getText(missionConfigFile >> "zero_CfgItems" >> _LPoU >> "name"); hint format[localize "STR_NOTF_GivenItem",_LkwK getVariable["aOsyc",name _LkwK],_yyua,_Mos]; } else { [_LkwK,_LPoU,_yyua,_kMp,false], remoteExecCall ["zero_fnc_jJj",_LkwK]; };};