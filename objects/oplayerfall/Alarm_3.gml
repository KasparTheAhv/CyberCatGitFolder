/// @desc slidetrans / restart room
with(oMusicController) {audio_sound_gain(curPlaying,0,1000);}
instance_destroy(oMusicController);
SlideTransition(TRANS_MODE.GOTO,room);
