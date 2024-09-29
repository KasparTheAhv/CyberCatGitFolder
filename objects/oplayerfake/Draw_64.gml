/// @description Insert description here
// You can write your code in this editor
if (os_type==os_android)
{
	if (alpha2!=0)
	{
	self.xx=vstick_get_x(1);
	self.yy=vstick_get_y(1);
	draw_sprite_ext(sprite_index,image_index,xx,yy,4,4,0,c_white,alpha2);
	}
}

draw_text(100,100,y);