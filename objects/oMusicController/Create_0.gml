/// @desc
curPlaying=noone;
	next=false;
// Per room setup for desired song
songlist=[BGMuForest1,BGMuForest2,BGMuForest3];
// SONGS
if (room==Room0){songlist=[BGMuHome1,BGMuHome2];} // house
if (room==Room5){songlist=[BGMuCity1,BGMuCity2];}  // city
if (room==Room6){songlist=[BGMuPlane1];} // plane/ on train
if (room==Room9){songlist=[BGMuHome1,BGMuHome2];} // house
if (room==Room10){songlist=[BGMuWinter1,BGMuWinter2];} // winter
if (room==Room11){songlist=[BGMuWinter1,BGMuWinter2];} // winter
if (room==Room12){songlist=[BGMuHome1,BGMuHome2];} // house
if (room==Room13){songlist=[BGMuJungle1,BGMuJungle2,BGMuJungle3];} // jungle
if (room==Room14){songlist=[BGMuJungle1,BGMuJungle2,BGMuJungle3];} // jungle
if (room==Room15){songlist=[BGMuJungle1,BGMuJungle2,BGMuJungle3];} // jungle
if (room==Room16){songlist=[BGMuDesert1,BGMuDesert2];}  // desert
if (room==Room17){songlist=[BGMuDesert1,BGMuDesert2];}  // desert
if (room==Room20){songlist=[BGMuCity1,BGMuCity2];}  // city
if (room==Room21){songlist=[BGMuPlane1];} // plane/ on train
if (room==Room23){songlist=[BGMuHome1,BGMuHome2];} // house
if (room==Room24){songlist=[BGMuCave1,BGMuCave2];} // cave
if (room==Room25){songlist=[BGMuCave1,BGMuCave2];} // cave
if (room==Room26){songlist=[BGMuCity1,BGMuCity2];}  // city
songlist=array_shuffle(songlist);
desiredsong=array_get(songlist,0);
sound_id=false;
cursongnr=0;
maxsongs = array_length(songlist);
show_debug_message("maxsongs: "+string(maxsongs));
paused=false;
self.alarm[1]=10;