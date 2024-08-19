tilemap=layer_tilemap_get_id("Collision");
ineffective=false;
image_xscale=0.75;
image_yscale=0.75;
sprite_index=global.sBullet;
mask_index=sBullet;
whatpart = oRoomController.part28;
if (global.skin==3) {whatpart = oRoomController.part30;} // car
if (global.skin==6) {whatpart = oRoomController.part32;} // anatomy