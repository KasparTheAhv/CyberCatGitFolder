/// @desc
draw_self();

if (shieldDist>1){
	draw_set_alpha(0.3+changer2);
	draw_circle_color(x,y,shieldDist+changer,c_aqua, c_blue, false);
	draw_set_alpha(0.8+changer2);
	draw_circle_color(x,y,shieldDist+changer,c_purple, c_purple, true);
}
