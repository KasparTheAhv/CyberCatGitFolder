/// @desc
vsp=0;
hsp=0;
grv=0.3;
difFromBot=sprite_get_height(sprite_index);
tilemap = layer_tilemap_get_id("Collision");
desireddist=round(camera_get_view_width(view_camera[0])*0.52);
maxdist=desireddist+100;
hidden=true;

self.x=0;
self.y=0;
self.depth=depth-16;
image_speed=0; 
image_index=0;

alarm[0]=100; // appearing

