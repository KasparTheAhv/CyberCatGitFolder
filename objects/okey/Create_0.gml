held=false;
image_speed=0;
image_index=0;
grv=0.3;
inde=-100;
vsp=0;
if (keyid==0) {image_blend=c_yellow;}
if (keyid==1) {image_blend=c_red;}
if (keyid==2) {image_blend=c_aqua;}
if (keyid==3) {image_blend=c_lime;}
if (keyid==4) {image_blend=c_blue;}
if (keyid==10) {image_index=1;image_blend=c_white;}
self.depth=depth-10;

tmap = layer_tilemap_get_id("Collision");
tmap2 = layer_tilemap_get_id("Platform");