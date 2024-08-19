/// @desc
image_xscale=0;
image_yscale=0;
image_angle=irandom_range(0,359);
ysca=choose(1,-1);
xsca=choose(1,-1);
estSize=random_range(0.6,1.1);
stage=0;
tilemap = layer_tilemap_get_id("Collision");
draw_self();