draw_sprite_ext(sPlayerPause,index,x,y,image_xscale,image_yscale,0,c_white,1);
if !(instance_exists(oGUSlider))
{
scribble("[fa_center][fa_middle][scale,"+string(1)+"]"+string(whatroom)).draw(x,roomtextY);
}
draw_self();
