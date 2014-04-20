class CfgSounds
{
	sounds[] = {};
	class loadgun
	{
		// how the sound is referred to in the editor (e.g. trigger effects)
		name = "loadgun";
		// filename, volume, pitch
		sound[] = {"sounds\support\loadgun.ogg", 1, 1};
		titles[] = {};
	};	
	class boots
	{
		// how the sound is referred to in the editor (e.g. trigger effects)
		name = "boots";
		// filename, volume, pitch
		sound[] = {"sounds\support\boots.ogg", 2, 1};
		titles[] = {};
	};	
	
	// Definition for each sound
	class radiom1
	{
		name = "radiomorse"; // Name for mission editor
		sound[] = {sounds\RADIO.ogg, 0.4, 1.0};
		titles[] = {0, ""};
	};	
};
