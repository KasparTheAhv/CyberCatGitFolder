/// @desc
if !(started) {exit;}


if (fade) {
	sprite_index=sMJ;
	image_speed=0;
	if (image_alpha>0) {image_alpha-=0.1;} else {instance_destroy();}
exit;	
}

vsp+=grv;




// sliding


if (leg_xscale<5) {leg_index+=1;} else {leg_index=0;}


if (tilemap_get_at_pixel(tilemap,x,20+y+vsp)!=0)
{
vsp=0;	 landed=true;
}


if (tilemap_get_at_pixel(tilemap,x+(hsp*10),20+y)!=0) && (tilemap_get_at_pixel(tilemap,x+(hsp*10),20+y-32)!=0)  {
hsp=hsp*-1;
}



if (tilemap_get_at_pixel(tilemap,x+(hsp*10),20+y)!=0) && (tilemap_get_at_pixel(tilemap,x+(hsp*10),20+y-32)==0)  {
	if (landed)
	{
	vsp-=4; landed=false;
	}
}



if (sign(hsp)==1) {leg_xscale=2;} else {leg_xscale=-2;}

x+=floor(hsp);
y+=floor(vsp);