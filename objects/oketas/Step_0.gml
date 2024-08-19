/// @description Insert description here
// You can write your code in this editor
if (image_xscale<targetscale)
{
image_xscale+=0.0001+(suurendaja*4);
image_yscale+=0.0001+(suurendaja*4);
if (suurendaja<1) {suurendaja+=(suurendaja*0.1);}
} else {if (lubakustuda) {instance_destroy();}}
image_angle+=35;
var target=oFollowPlayer.target;
if instance_exists(target)
{
self.x=target.x;
self.y=target.y;
}