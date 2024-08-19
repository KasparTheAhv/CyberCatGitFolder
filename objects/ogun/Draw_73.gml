if (dist!=0)
{
	draw_set_alpha(0.25);
	draw_line_color(x,y,xx,yy,c_lime,c_lime);
	draw_set_alpha(1);
	draw_sprite_ext(sAimTarget,0,xx,yy,1,1,rotation,c_white,1);
}