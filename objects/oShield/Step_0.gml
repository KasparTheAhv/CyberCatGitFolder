/// @description Insert description here
// You can write your code in this editor

part_particles_create(oRoomController.part_sys, x, y,oRoomController.part25,1);


if (forplayer)
{
	if instance_exists(oPlayer) {target=oPlayer;}
	if instance_exists(oPlayerAttack) {target=oPlayerAttack;}
	if (instance_exists(target)) 
	{
	self.x=target.x;
	self.y=target.y;
	} else {instance_destroy();}
	
} else {
	
	if (instance_exists(oBullet))
	{
		var nearest_bul = instance_nearest(x,y,oBullet)
		{
			if (point_distance(x,y,nearest_bul.x,nearest_bul.y)<60) {if instance_exists(nearest_bul){instance_destroy(nearest_bul);}}	
		}
	}
	
	if (instance_exists(enemy)) 
	{
	self.x=enemy.x;
	self.y=enemy.y;
	} else {instance_destroy();}
	
}