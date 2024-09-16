/// @desc
if (cur_state==adReviveStates.appear)
{
	if (timerInd>1)
	{
	timerInd-=1;
	alarm[0]=60;
	} else {
	oPlayerFall.alarm[3]=1;
	cur_state=adReviveStates.fade;
	luba=false;
	}
}