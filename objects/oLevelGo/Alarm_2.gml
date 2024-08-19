/// @desc fastest time apply moment

// time
if !(cloudLeaderData)
{
var key="Room"+string(actuallevel)+"totaltime";
total=ds_map_find_value(settingsmap,key);

if is_undefined(total)
		{
		total=noone;	
		minutes=noone;
		seconds=noone;
		} else {
		minutes = floor(total/60)
		seconds = round(total % 60);
		if (minutes==0) {minutes=noone;}
		if (seconds==0) {seconds=noone;}
		}
		
		
if (discovery==noone) {discovery="0";disccolor="[#FF1919]";}
if (minutes==noone) && (seconds==noone) {total="---";totalcolor="[#FF1919]";}
if (minutes==noone) && (seconds!=noone) {total=string(seconds)+"s";}
if (minutes!=noone) && (seconds==noone) {total=string(minutes)+"m";}
if (minutes!=noone) && (seconds!=noone) {total=string(minutes)+"m "+string(seconds)+"s";}


} else {

show_debug_message(cloudRetrievedTime);
total=real(cloudRetrievedTime)/1000;	
if is_undefined(total) 
		{
		total=noone;	
		minutes=noone;
		seconds=noone;
		} else {
		minutes = floor(total/60)
		seconds = round(total % 60);
		if (minutes==0) {minutes=noone;}
		if (seconds==0) {seconds=noone;}
		}
if (discovery==noone) {discovery="0";disccolor="[#FF1919]";}
if (minutes==noone) && (seconds==noone) {total="BUG?";totalcolor="[#FF1919]";}
if (minutes==noone) && (seconds!=noone) {total=string(seconds)+"s";}
if (minutes!=noone) && (seconds==noone) {total=string(minutes)+"m";}
if (minutes!=noone) && (seconds!=noone) {total=string(minutes)+"m "+string(seconds)+"s";}	
}


//show the leaderboard button anyway
if (global.GoogleConnected==true)
{
cloudLeaderData=true;
}
showtime=true;

// "[#FFFFFF]" -white										
// "[#FF1919]" -red
// "[#FFF432]" -yellow										
// "[#17F432]" -lime