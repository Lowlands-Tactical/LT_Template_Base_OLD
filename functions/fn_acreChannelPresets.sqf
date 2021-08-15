[{call acre_api_fnc_isInitialized}, {
	private _personalRadio = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType;
	private _frequency = (["ROMEO", "ALPHA", "ALPHA1", "ALPHA2", "ALPHA3", "BRAVO", "BRAVO1", "BRAVO2", "BRAVO3", "MMG1", "MMG2", "HMG1", "HMG2", "MAT1", "MAT2", "HAT1", "HAT2", "SAM1", "SAM2", "ENG1", "ENG2", "SNPR", "MTR1", "MTR2", "IFV1", "IFV2", "IFV3", "TNK1", "TNK2", "TNK3", "TH1", "TH2", "TH3", "AH1", "AH2", "AH3", "JET"] find (groupID group player)) + 1;

	// Exit als er geen radio gevonden is
	if (_frequency == 0 || isNil "_personalRadio") exitWith {};

	// Geeft kanaal
	[_personalRadio, _frequency] call acre_api_fnc_setRadioChannel;

},[]] call CBA_fnc_waitUntilAndExecute;

