/// @desc currenty
// You can write your code in this editor
if (y>0)
{
	y-=20;
	if (visible) && (global.GFX1==1)
	{
part_particles_create(oRoomController.part_sys, x, y+10,oRoomController.part10,irandom_range(3,8));
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part10,irandom_range(3,8));
part_particles_create(oRoomController.part_sys, x, y-10,oRoomController.part10,irandom_range(3,8));
	}
} else {
if instance_exists(oLightning) {instance_destroy(); exit;}
if instance_exists(oKetas)	   {instance_destroy(); exit;}
if instance_exists(oPlayerGod) {instance_destroy(); exit;}
if instance_exists(oFollowPlayer) {var tar=oFollowPlayer;}
if instance_exists(oPlayer) {var tar=oPlayer;}
if instance_exists(oPlayerAttack) {var tar=oPlayerAttack;}
oGUIBAR.cn=150;
global.noheal=true;
	if !instance_exists(oLightning)
	{
	instance_create_layer(tar.x,tar.y,"Particles",oLightning);
	}
instance_destroy();
}





