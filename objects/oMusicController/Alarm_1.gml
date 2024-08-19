///@desc audio play desired song
if (curPlaying!=desiredsong)  // kui hetkel ei mängi soovitud lugu
{
	          audio_sound_gain(curPlaying,0,1000);  //maanda hetkel olev laul
			  curPlaying=desiredsong; // pista soovitud lugu variable
			  show_debug_message("Set curPlaying to: "+string(audio_get_name(desiredsong)));
			alarm[1]=125; // lase uuesti seda alarm 2 sekundi pärast kus paneb uue laulu mängima
} else { 
	 // peata kõik
	audio_stop_sound(BGMuForest1);  
	audio_stop_sound(BGMuForest2);  
	audio_stop_sound(BGMuForest3);  
	audio_stop_sound(BGMuHome1);  
	audio_stop_sound(BGMuHome2);  
	audio_stop_sound(BGMuJungle1);  
	audio_stop_sound(BGMuJungle2);  
	audio_stop_sound(BGMuJungle3);  
	audio_stop_sound(BGMuDesert1);  
	audio_stop_sound(BGMuDesert2);  
	audio_stop_sound(BGMuCave1);  
	audio_stop_sound(BGMuCave2); 
	audio_stop_sound(BGMuCity1);  
	audio_stop_sound(BGMuCity2); 
	audio_stop_sound(BGMuPlane1); 
	audio_stop_sound(BGMuWinter1); 
	audio_stop_sound(BGMuWinter2); 
	// check what song needs what max_volume !!!!!!!!!! ALSO IN oPAUSE ALARM 2 !!!!!!!!
	var maxvol=0;
if (curPlaying==BGMuForest1){maxvol=0.2; }
if (curPlaying==BGMuForest2){maxvol=0.15; }
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
if (curPlaying==BGMuWinter1) {maxvol=0.02;}
if (curPlaying==BGMuWinter2) {maxvol=0.03;}

	// create the right volume
	var soundlvl = maxvol*global.volume_mfx;
	// play the sound at right volume
	sound_id = audio_play_sound(curPlaying,0.5,false);
	show_debug_message("Started playing: "+string(audio_get_name(curPlaying)+" at lvl: "+string(soundlvl))+" with global.volume_mfx: "+string(global.volume_mfx));
	
	if instance_exists(oPlayerGod)
	{
	audio_sound_gain(curPlaying,0, 2000);	
	} else {
	audio_sound_gain(curPlaying,soundlvl, 2000);
	}
	
	alarm[0]=300; // go into sound checking mode
	}






