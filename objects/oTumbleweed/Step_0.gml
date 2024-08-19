/// @description Insert description here

// vertical block
if (tilemap_get_at_pixel(tilemap,x,bbox_bottom+vsp-10)==1)
{
	vsp=-vsprandom;
}

// horisontal block

if (tilemap_get_at_pixel(tilemap,bbox_left+hsp+10,y)==1)
{
	hsp=0;
	vsp-=grv*1.5;
} else {hsp-=grv;}
vsp+=grv;
hsp=clamp(hsp,minspd-alter,3);
vsp=clamp(vsp,minspd,3);
y += floor(vsp);
x += floor(hsp);
if (self.x<0) {instance_destroy();}

if (unseen) {exit;}

if (alterup)
{
	if (alter<maxalter) {alter+=alterspd;} else {alterup=false;}
} else {
	if (alter>0) {alter-=alterspd;} else {alterup=true;}
}
image_angle+=(hsp*-1);


