/// @desc FastestTime()
/// @arg room 
/// @arg1 action 
/// @arg2 time
/// ACTION TYPES : 0 - submit , 1 - retrieve

function FastestTime(){
var whatRoom = argument[0];
var action = argument[1];
var newtime = round(argument[2]);
var leader_id = noone;

if (os_is_network_connected()!=true)  {exit;}
if (global.GoogleConnected!=true)  {exit;}

if (action==0) {var nr_only = string_delete(whatRoom,1,4);} else {
nr_only=string(argument[0]);	
}


									
if (nr_only == "0")		{var leader_id = "CgkIgbe1i_EYEAIQAg" ;}
if (nr_only == "1")		{var leader_id = "CgkIgbe1i_EYEAIQAQ" ;}
if (nr_only == "2")		{var leader_id = "CgkIgbe1i_EYEAIQAw" ;}
if (nr_only == "3")		{var leader_id = "CgkIgbe1i_EYEAIQBA" ;}
if (nr_only == "4")		{var leader_id = "CgkIgbe1i_EYEAIQBQ" ;}
if (nr_only == "5")		{var leader_id = "CgkIgbe1i_EYEAIQBg" ;}
if (nr_only == "6")		{var leader_id = "CgkIgbe1i_EYEAIQBw" ;}
if (nr_only == "7")		{var leader_id = "CgkIgbe1i_EYEAIQCA" ;}
if (nr_only == "8")		{var leader_id = "CgkIgbe1i_EYEAIQCQ" ;}
if (nr_only == "9")		{var leader_id = "CgkIgbe1i_EYEAIQCg" ;}
if (nr_only == "10")	{var leader_id = "CgkIgbe1i_EYEAIQCw" ;}
if (nr_only == "11")	{var leader_id = "CgkIgbe1i_EYEAIQDA" ;}
if (nr_only == "12")	{var leader_id = "CgkIgbe1i_EYEAIQDQ" ;}
if (nr_only == "13")	{var leader_id = "CgkIgbe1i_EYEAIQDg" ;}
if (nr_only == "14")	{var leader_id = "CgkIgbe1i_EYEAIQDw" ;}
if (nr_only == "15")	{var leader_id = "CgkIgbe1i_EYEAIQEA" ;}
if (nr_only == "16")	{var leader_id = "CgkIgbe1i_EYEAIQEQ" ;}
if (nr_only == "17")	{var leader_id = "CgkIgbe1i_EYEAIQEg" ;}
if (nr_only == "18")	{var leader_id = "CgkIgbe1i_EYEAIQEw" ;}
if (nr_only == "19")	{var leader_id = "CgkIgbe1i_EYEAIQFA" ;}
if (nr_only == "20")	{var leader_id = "CgkIgbe1i_EYEAIQFQ" ;}
if (nr_only == "21")	{var leader_id = "CgkIgbe1i_EYEAIQFg" ;}
if (nr_only == "22")	{var leader_id = "CgkIgbe1i_EYEAIQFw" ;}
if (nr_only == "23")	{var leader_id = "CgkIgbe1i_EYEAIQGA" ;}
if (nr_only == "24")	{var leader_id = "CgkIgbe1i_EYEAIQGQ" ;}
if (nr_only == "25")	{var leader_id = "CgkIgbe1i_EYEAIQGg" ;}
if (nr_only == "26")	{var leader_id = "CgkIgbe1i_EYEAIQGw" ;}
if (nr_only == "27")	{var leader_id = "CgkIgbe1i_EYEAIQHA" ;}
if (nr_only == "28")	{var leader_id = "CgkIgbe1i_EYEAIQHQ" ;}
if (nr_only == "29")	{var leader_id = "CgkIgbe1i_EYEAIQHg" ;}
if (nr_only == "30")	{var leader_id = "CgkIgbe1i_EYEAIQHw" ;}
if (nr_only == "31")	{var leader_id = "CgkIgbe1i_EYEAIQIA" ;}

with (oLevelGo) {lead_id=leader_id;}

if (action==0) //submit
{
	GooglePlayServices_Leaderboard_SubmitScore(leader_id,newtime,"S");
	show_debug_message("Submitting the score: "+string(newtime)+" to leader: "+string(nr_only));
} else { // retrieve
	
	
	if (global.GoogleConnected)
	{
	GooglePlayServices_Leaderboard_LoadPlayerCenteredScores(leader_id,Leaderboard_TIME_SPAN_ALL_TIME,Leaderboard_COLLECTION_PUBLIC,5,true);
	show_debug_message("Catching leaderboard for room: "+string(nr_only));
	} else {
		
		oLevelGo.alarm[2]=5; 
		show_debug_message("Google not connected, continuing with device best score.");
		}
	
	
	
}
exit;

}