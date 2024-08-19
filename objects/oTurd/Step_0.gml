/// @desc GRavity and movement
if (cur_state==turdstates.stay)
{
image_angle=0;
if (tilemap_get_at_pixel(tilemap,x,y+vsp+4)!=0) {hsp=0;}
} else {
image_angle+=(hsp*-3);	
}
if (cur_state==turdstates.relocate)
{
	if (point_distance(x,0,850,0)<20)
	{
	cur_state=turdstates.stay;
	hsp=0;
	alarm[0]=irandom_range(50,80);
	}
}

// apply gravity
vsp+=grv;
vsp=clamp(vsp,-19,8);
vspP=vsp;
if (wallcd>0) {wallcd-=1;}
// deny falling if collision with wall tile
if (tilemap_get_at_pixel(tilemap,x,y+vsp+4)!=0)
{
vsp=0;
}
// bounce off wall
if (tilemap_get_at_pixel(tilemap,x+hsp,y+4)!=0) && (wallcd==0)
{
hsp=hsp*-1; wallcd=20;

cur_state=turdstates.stay;
alarm[0]=40;
}
// apply movement to x and y cordinates if not stopped
self.x+=hsp;
self.y+=vsp;