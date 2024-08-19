/// @description Insert description here
// You can write your code in this editor
if !(immune)
{
var xx=other.x;
var yy=other.y;
instance_destroy(other);
with (oRoomController)
{
part_particles_create(part_sys, xx, yy,part3,irandom_range(5,8));
}
if instance_exists(oGUIBAR){oGUIBAR.cn-=3;}
}