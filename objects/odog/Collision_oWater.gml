/// @desc Float on liquid
with(other)
{
var type=LiquidType;	
}
if collision_point(x,y-10,oWater,false,true)
{
if !(floatlock)
{
floatlock=true;
vsp-=choose(1.9,2.1,1.8,2.5,3);
alarm[7]=16;
}

if (visible) && (global.GFX1==1)
{
if !(wet) {if (type==0) {part_particles_create(oRoomController.part_sys, x, y-17,oRoomController.part4,irandom_range(7,12));}
if (type==1) {part_particles_create(oRoomController.part_sys, x, y-17,oRoomController.part24,irandom_range(7,12));}}
}

wet=true;

if (type==0){image_blend=c_blue;} else {image_blend=c_lime;}
alarm[8]=10;
sprite_index=sDogR;
image_speed=1;
}