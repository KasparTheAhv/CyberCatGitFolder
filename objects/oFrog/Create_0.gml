vsp=0;hsp=0;grv=0.3;immune=false;
image_speed=0;
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
attacking=false;dir=noone;
curvePosition = 0;
curveSpeed = 0.01;
distance = 0;
move=false;
jump = false;
cKordaja=0.4;
alarm[0]=60;
blocker=0;
target_y=self.y;
target_x=self.x;
// 2 extra variables
y_targ = target_y;
x_distance = 0;
tonqDete=65*image_xscale*2;
atkDete=210*image_xscale*2;
self.depth=depth-5;
mytonq=noone;
tonqueImade=noone;