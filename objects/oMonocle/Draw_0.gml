/// @desc
draw_self();
if (current_state==monoclestates.laser) 
{	
	if (laserAlpha>0.1)
	{
	draw_set_alpha(laserAlpha);
	draw_set_color(c_aqua);
	draw_triangle(xx1,yy1,xx2,yy2,xx3,yy3,false);	
	draw_sprite_ext(sprite_index,1,x,y,2,2,0,c_white,laserAlpha);
	draw_set_alpha(1);
	}
}

if (current_state==monoclestates.ending) 
{	
	if (laserAlpha>0.1)
	{
	draw_set_alpha(laserAlpha);
	draw_set_color(c_aqua);
	draw_triangle(xx1,yy1,xx2,yy2,xx3,yy3,false);	
	draw_sprite_ext(sprite_index,1,x,y,2,2,0,c_white,laserAlpha);
	draw_set_alpha(1);
	}
}