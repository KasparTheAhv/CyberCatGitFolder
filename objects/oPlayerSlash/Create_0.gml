image_angle=irandom_range(330,390);
image_xscale=choose(0.5,-0.5);
image_yscale=choose(0.5,-0.5);
if (global.GFX1==1) {part_particles_create(oRoomController.part_sys, x, y,oRoomController.part111,irandom_range(10,12));}
maxWips=2;
wips=0;