/// @desc
if !(leaderOpen)
{
if (leaderTime<30) {leaderTime+=1;} else {
	
	
	leaderTime=0; leaderOpen=true; alarm[0]=30;
	
	GooglePlayServices_Leaderboard_Show("CgkIgbe1i_EYEAIQAg");
	}	
}