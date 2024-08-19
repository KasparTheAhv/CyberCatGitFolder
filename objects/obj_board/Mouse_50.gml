/// @desc
// Draw on the canvas when the mouse is dragged




if (is_drawing)
{
	if (mouse_x<self.x) { is_drawing=false; }
	if (mouse_x>self.x+width)  { is_drawing=false; }
	if (mouse_y<self.y) { is_drawing=false; }
	if (mouse_y>self.y+height) { is_drawing=false; }
	
	if surface_exists(surf)
	{
    surface_set_target(surf);
    draw_line_width_color(mouse_x - x, mouse_y - y, previous_mouse_x - x, previous_mouse_y - y,1,draw_color,draw_color);
    surface_reset_target();
	} else {
	surf = surface_create(width,height);
    surface_set_target(surf);
	draw_clear_alpha(c_black,1);
    surface_reset_target();
	exit;
	}
	
}




previous_mouse_x = mouse_x;
previous_mouse_y = mouse_y;