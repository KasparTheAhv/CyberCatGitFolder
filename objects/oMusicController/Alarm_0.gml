///@desc check if song needs to end and new needs to start

//show_debug_message("next: "+string(next));

var Playing=noone;
if audio_is_playing(BGMuCave1) {var Playing=BGMuCave1;}
if audio_is_playing(BGMuCave2) {var Playing=BGMuCave2;}
if audio_is_playing(BGMuCity1) {var Playing=BGMuCity1;}
if audio_is_playing(BGMuCity2) {var Playing=BGMuCity2;}
if audio_is_playing(BGMuForest1) {var Playing=BGMuForest1;}
if audio_is_playing(BGMuForest2) {var Playing=BGMuForest2;}
if audio_is_playing(BGMuForest3) {var Playing=BGMuForest3;}
if audio_is_playing(BGMuHome1)	 {var Playing=BGMuHome1;}
if audio_is_playing(BGMuHome2)	 {var Playing=BGMuHome2;}
if audio_is_playing(BGMuJungle1) {var Playing=BGMuJungle1;}
if audio_is_playing(BGMuJungle2) {var Playing=BGMuJungle2;}
if audio_is_playing(BGMuJungle3) {var Playing=BGMuJungle3;}
if audio_is_playing(BGMuDesert1) {var Playing=BGMuDesert1;}
if audio_is_playing(BGMuDesert2) {var Playing=BGMuDesert2;}
if audio_is_playing(BGMuPlane1) {var Playing=BGMuPlane1;}
if audio_is_playing(BGMuWinter1) {var Playing=BGMuWinter1;}
if audio_is_playing(BGMuWinter2) {var Playing=BGMuWinter2;}


	var cur_length= audio_sound_length(Playing);
	var cur_len_at= audio_sound_get_track_position(sound_id);
//	show_debug_message("len: "+string(cur_length));
//		show_debug_message("at: "+string(cur_len_at));
if (Playing!=noone)
{
//	show_debug_message("got in");

	if (cur_len_at>cur_length-5) // hakkab lõppema
	{
	next=true;	
	} 
	
	
	if (next) // vaheta laul
	{
		next=false;
	
	if (cursongnr<maxsongs-1) {
	cursongnr+=1;
//	show_debug_message("cursong"+string(cursongnr));
	} else {cursongnr=0;}
		
	desiredsong=array_get(songlist,cursongnr);
	
	alarm[1]=1; //pane desired song käima
	} else {alarm[0]=120;} // lase uuesti check 2 sekundi pärast
	
} else {
alarm[1]=1;	
}



