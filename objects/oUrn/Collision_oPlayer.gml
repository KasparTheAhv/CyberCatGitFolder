/// @description Insert description here
// You can write your code in this editor
if !(touched)
{
xx=self.x;
yy=self.y;
touched=true;
alarm[0]=1;
image_index=1;


	with (oPlayer)
	{
	immune=true;
	bulletshield=true;
	canatk=false;
	}
	with(oDartTrap)
	{
		alarm[0]=-1;
		alarm[1]=-1;
	}
	with (oFollowPlayer)
	{
	target = oUrn;
	}
	with(oVStick)
	{
	vstick_set_active(stick_id,false);
	}
	
}