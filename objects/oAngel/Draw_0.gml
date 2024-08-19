/// @desc
draw_sprite_ext(sprite_index,3,xxx,yyy,image_xscale*-1,image_yscale,image_angle+rot*-1,image_blend,1);
draw_sprite_ext(sprite_index,3,xxx,yyy,image_xscale,image_yscale,image_angle+rot,image_blend,1);
draw_sprite_ext(sprite_index,2,xxx,yyy,image_xscale*-1,image_yscale,image_angle-rot*-1,image_blend,1);
draw_sprite_ext(sprite_index,2,xxx,yyy,image_xscale,image_yscale,image_angle-rot,image_blend,1);
draw_sprite_ext(sprite_index,1,xxx,yyy,image_xscale,image_yscale,image_angle,image_blend,1);

draw_sprite_ext(sprite_index,0,xx,yy,image_xscale,image_yscale,image_angle,image_blend,1);


if (current_state==angelstates.summon)
{
draw_set_alpha(summonratemini);	
draw_line_width_color(xxx,yyy,summonx,summony,sumwid,c_aqua,c_aqua);
draw_set_alpha(1);
}

