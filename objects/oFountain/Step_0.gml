/// @desc
if !(activated) {
	exit;}
if (goUp)
{
	var player = collision_rectangle(rx1,yy,rx2,y,oPlayer,false,true);
{
	if (player!=noone)
	{
		with(player)
		{
			vsp=-12;
			jumping=true;
		}
	}
}
	if (stack_height<65)
	{
	stack_height+=1;	
	} else {goUp=false;}
} else {
	if (stack_height>1)
	{
	stack_height-=1;	
	}	else {instance_destroy();}
}


// stack top
yy = y-(stack_height*12);
