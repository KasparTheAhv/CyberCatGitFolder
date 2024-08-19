/// @desc
image_xscale=0;
image_yscale=0;
tilemap = layer_tilemap_get_id("Collision");
speed=irandom_range(2,4);
direction=irandom_range(30,150);
gravity_direction=270;
gravity=0.2;
height=irandom_range(-4,4);
locked=false;