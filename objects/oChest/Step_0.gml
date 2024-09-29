/// @desc open chest and give reward through alarm
if !(locked) && !(rewarded)
{
	if (chestHeadY<17) {chestHeadY+=1;} else {rewarded=true; alarm[1]=1;}
}

if (taskDone) exit;
if (point_distance(oFollowPlayer.x,oFollowPlayer.y,x,y)<120)
{
	taskDone=true;
	TaskDone(1);
	TaskNew(2,"Find chest key")
}