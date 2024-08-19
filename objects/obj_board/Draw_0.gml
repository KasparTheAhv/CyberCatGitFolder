/// @desc
// Draw the canvas
draw_self();

if (surface_exists(surf))
{
    draw_surface(surf, x, y);
}
draw_sprite(sDrawingBoardEdge,0,x,y);
draw_line_color(x+27,y+62,x+35,y+62,draw_color,draw_color);
