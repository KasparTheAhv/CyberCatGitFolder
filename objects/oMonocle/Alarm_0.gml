/// @desc Action choosing / state machine

if (elud==1)
{
alarm[3]=1;
alarm[1]=-1;
alarm[0]=-1;
}

if (current_state==monoclestates.nothing)
{
	alarm[1]=1; // activate wander
	alarm[0]=irandom_range(240,360);
	exit;
}


if (current_state==monoclestates.justspawned)
{
	alarm[1]=1; // activate wander
	alarm[0]=irandom_range(240,360);
	exit;
}

if (current_state==monoclestates.wander)
{
	alarm[2]=1; // activate chase
	alarm[0]=-1;
	exit;
}


if (current_state==monoclestates.rest)
{
	alarm[1]=1; // activate wander
	alarm[0]=irandom_range(240,360);
	exit;
}




