/// @desc
if (os_type==os_android)
{
	draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	scribble(textwhole+"[fa_left]"+string(txt)).draw(x,y);
	if (global.GoogleConnected)
	{
	scribble(textwhole+"[fa_right]"+"Hello  "+string(display_name)+"  :)").draw(xxx,y);
	} else {
	scribble(textwhole+"[fa_right]"+"Hello Unconnected").draw(xxx,y);	
	}
} else {
	scribble(textwhole+"[fa_right]"+"Demo Version").draw(xxx,y);		
}