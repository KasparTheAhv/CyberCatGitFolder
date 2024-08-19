/// play_music(snClick,false);
function play_sound() {

	var vol = global.volume_sfx;    // global.volume_sfx must contain volume (0...1)
	if vol == 0 exit;               // if volume is 0 then not need play, exit

	var snd = argument[0];          // name of sound which need play, passed to the script
	var loop = false;               // need loop sound or not
	if argument_count > 1 loop = argument[1];

	var s = audio_play_sound(snd, 100, loop);  // Start sound
	audio_sound_gain(s, vol, 1);    // Set volume for this sound

}
