/// @desc
if (draw)
{
draw_sprite_ext(global.sPlayerR,image_index,x,y,global.catskinscale,global.catskinscale,0,c_white,1);	
draw_sprite_ext(global.sPlayerD,attackframe,actxx,actyy,global.catskinscale,global.catskinscale,0,c_white,1);
draw_sprite_ext(global.sPlayerGod,godframe,actxx2,actyy2,global.catskinscale,global.catskinscale,0,c_white,1);
draw_sprite_ext(global.sGun,0,actxx2,actyy2,global.catskinscale,global.catskinscale,0,c_white,1);	
draw_sprite_ext(global.sBullet,bulletind,actxx2+15+bulletdist,actyy2+4,global.catskinscale,global.catskinscale,0,c_white,1);	
}

