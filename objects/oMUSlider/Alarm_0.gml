/// @desc
if instance_exists(oMusicController)
{
	with (oMusicController)
	{
		var maxvol=0;
		if (curPlaying==BGMuForest1){maxvol=0.2; }
		if (curPlaying==BGMuForest2){maxvol=0.15;}
		if (curPlaying==BGMuForest3){maxvol=0.07;}
		if (curPlaying==BGMuHome1)	{maxvol=0.03;}
		if (curPlaying==BGMuHome2)	{maxvol=0.03;}
		if (curPlaying==BGMuJungle1){maxvol=0.05;}
		if (curPlaying==BGMuJungle2){maxvol=0.06;}
		if (curPlaying==BGMuJungle3){maxvol=0.15;}
		if (curPlaying==BGMuDesert1){maxvol=0.1; }
		if (curPlaying==BGMuDesert2){maxvol=0.05;}
		if (curPlaying==BGMuCave1)  {maxvol=0.05;}
		if (curPlaying==BGMuCave2)  {maxvol=0.03;}
		if (curPlaying==BGMuCity1)  {maxvol=0.07;}
		if (curPlaying==BGMuCity2)  {maxvol=0.03;}
		if (curPlaying==BGMuPlane1) {maxvol=0.07;}
		// create the right volume
		var soundlvl = maxvol*global.volume_mfx;
		//show_debug_message("Currently playing: "+string(audio_get_name(curPlaying)+" at lvl: "+string(soundlvl))+" with global.volume_mfx: "+string(global.volume_mfx));
		audio_sound_gain(curPlaying,soundlvl, 1);
	}
}