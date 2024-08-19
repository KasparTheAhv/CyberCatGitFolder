/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oPlayer))
{
	if (point_distance(x+20,y,oPlayer.x,oPlayer.y)<50)
	{
	with(oFollowPlayer) {target=oCannon;}	
	index=2;	
	launching=true;
	instance_destroy(oPlayer);
	self.alarm[5]=-1;
	self.alarm[1]=-1;
	self.alarm[2]=-1;
	self.alarm[3]=-1;
	self.alarm[4]=-1;
	alarm[1]=60; // shoot player, change sprite
	alarm[0]=70; // bring cannon down
	alarm[2]=1;
	}
	
}