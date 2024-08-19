/// @desc
// in the selection
draw_self();
draw_sprite_ext(sSkinIcons,curskin-1,x,y,0.75,0.75,0,c_white,1);


// selected preview on left
draw_sprite_ext(sprite_index,image_index,selectedX,selectedY,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sSkinIcons,selectedskin-1,selectedX,selectedY,0.75,0.75,0,c_white,1);

// draw arrows
draw_sprite_ext(sArrow,arrowedasiindex,edasiX,y,2,2,0,c_white,1);
draw_sprite_ext(sArrow,arrowtagasiindex,tagasiX,y,-2,2,0,c_white,1);


 
if (showbutton)
{
draw_sprite_ext(sLevel,buyindex,buybuttonX,buybuttonY,2,2,0,c_white,1);
}

if (buyheld>0)
{
draw_set_alpha(0.5);
draw_rectangle_color(buybuttonX-30,buybuttonY+10,buybuttonX+29,buybuttonY+10-buyheld,c_lime,c_lime,c_lime,c_lime,false);
draw_set_alpha(1);
}