/*
	File: fn_chopShopMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens & initializes the chop shop menu.
*/
if(life_action_inUse) exitWith {hint localize "STR_NOTF_ActionInProc"};
disableSerialization;
private["_nearVehicles","_control"];
_nearVehicles = nearestObjects [getMarkerPos (_this select 3),["Car","Truck","Air"],30];

life_chopShop = (_this select 3);
//Error check
if(count _nearVehicles == 0) exitWith {titleText[localize "STR_Shop_NoVehNear","PLAIN"]};
if(!(createDialog "Chop_Shop")) exitWith {hint localize "STR_Shop_ChopShopError"};

_control = ((findDisplay 39400) displayCtrl 39402);
{
	if(alive _x) then {
		_className = typeOf _x;
		_displayName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
		_picture = getText(configFile >> "CfgVehicles" >> _className >> "picture");
		_price = [_className,playerside] call life_fnc_classPrices;
		
		if(_price != -1 && count crew _x == 0) then {
			_sellPrice = _price/2;
			_control lbAdd _displayName;
			_control lbSetData [(lbSize _control)-1,str(_forEachIndex)];
			_control lbSetPicture [(lbSize _control)-1,_picture];
			_control lbSetValue [(lbSize _control)-1,_sellPrice];
		};
	};
} foreach _nearVehicles;