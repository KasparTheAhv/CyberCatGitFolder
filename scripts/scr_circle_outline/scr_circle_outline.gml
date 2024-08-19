///@desc scr_circle_outline(pos_x,pos_y,min_rad,max_thickness,color)
function scr_circle_outline(){
/// Script scr_circle_outline(pos_x,pos_y,min_rad,max_thickness,color)
var pos_x, pos_y, min_rad,max_thickness,circ_color;
pos_x = argument[0]; // The X Position for the Circle
pos_y = argument[1]; // The Y Position for the Circle
min_rad = argument[2]; // The Radius for the Circle
max_thickness = argument[3]; // The Thickness for the Circle
circ_color = argument[4]; // The Color of the Outline
draw_set_colour(circ_color);






// Draw the Circle
var i;
for (i = 0; i <= max_thickness; i+=0.25) {  
    draw_circle(pos_x, pos_y, min_rad+i, true);
}
}