hsp=0;
vsp=0;
grv=0.3;
timer=150;
alpha=0;
alpha2=0;
lubaalpha2=false;
yy=noone;
xx=noone;
lubaliikumine=true;
gW=global.gameWidth;
gH=global.gameHeight;
if (room==Room0)
{
sequence=0;	
}
sprite_index=global.sPlayer;
image_yscale=global.catskinscale;
image_xscale=global.catskinscale;

lubaalpha=false;
if (sequence==0)  {alarm[0]=90;}
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");

