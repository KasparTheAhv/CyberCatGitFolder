if(drawcat) {
draw_sprite_ext(global.sPlayer,0,x,y+10,xscale,0.75,0,image_blend,1); // vasak
}

draw_sprite_ext(sprite_index,0,x-uksekaug,y,image_xscale,image_yscale,0,image_blend,1); // vasak
draw_sprite_ext(sprite_index,0,x+uksekaug,y,-1*image_xscale,image_yscale,0,image_blend,1); //parem