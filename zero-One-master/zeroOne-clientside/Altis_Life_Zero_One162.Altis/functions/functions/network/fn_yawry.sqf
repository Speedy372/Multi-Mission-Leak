if(isServer || !hasInterface)exitwith{};private['_kMp','_Bzb','_sDN','_UQm','_lWqw','_bEA','_EHr'];_kMp = param[0,ObjNull,[ObjNull]];_EHr = param[1,true,[false]];if(isNull _kMp) exitWith {};if(local _kMp && !_EHr) exitWith {};if(animationState _kMp == "amovpercmsprsnonwnondf_amovppnemstpsnonwnondnon") exitWith {};if(animationState _kMp == "AovrPercMrunSrasWrflDf") exitWith {};_velocity = velocity _kMp;if(local _kMp) then { _UQm = 3.82; _lWqw = .4; _sDN = direction player; _Bzb = velocity _kMp; _kMp setVelocity[(_Bzb select 0)+(sin _sDN*_lWqw),(_Bzb select 1)+(cos _sDN*_lWqw),(_Bzb select 2)+_UQm];};_bEA = animationState _kMp;_kMp switchMove "AovrPercMrunSrasWrflDf";if(local _kMp) then { waitUntil{animationState _kMp != "AovrPercMrunSrasWrflDf"}; _kMp switchMove _bEA;};