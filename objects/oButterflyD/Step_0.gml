/// @desc

if (vsp<7) {vsp+=grv;}

if (tilemap_get_at_pixel(tmap,x,y+vsp)!=0)
{
vsp=0;
if (alarm_get(0)==-1) {alarm[0]=60;}
}

if (tilemap_get_at_pixel(tmap2,x,y+vsp)!=0)
{
vsp=0;
if (alarm_get(0)==-1) {alarm[0]=60;}
}

y+=vsp;