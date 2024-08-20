vsp+=grv;
vsp=clamp(vsp,-10,8);
if (lubaliikumine)
{
if (sign(hsp) !=0) {sprite_index=global.sPlayerR; image_speed=1;image_xscale = sign(hsp)*global.catskinscale;} else {sprite_index=global.sPlayer; image_speed=0;}
}
if (lubaalpha)
{
	
if (alpha<1) 
{
	alpha+=0.01;
	alpha2+=0.01;
	oVStick.alpha=oPlayerFake.alpha;
	alarm[2]=1;
} else {
	lubaalpha=false;
	alarm[3]=120;
	alpha=1;
	oVStick.alpha=oPlayerFake.alpha;
	}
}
textalpha="[alpha,"+string(alpha2)+"]";

if (lubaalpha2)
{
	
	
if (alpha2>0)
{
alpha2-=0.02;	

} else {instance_destroy(); }

}


x += floor(hsp);

// Vertical collision (ground)
if (vsp>0) bbox_side=bbox_bottom; else bbox_side=bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp)!=0) or (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)!=0)
{
	
	if (vsp>0){ y = y - ( y mod 32 ) + 31 - (bbox_bottom - y);landed=true;jumping=false;canjump=10;}
	else {y = y - ( y mod 32 ) - (bbox_top - y );}
	vsp=0;self.hspimmune=false;
}
// Change player Y according to VSP
y += floor(vsp);
