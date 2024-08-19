/// @desc
image_xscale=0.5;
image_yscale=0.5;
image_index=0;
image_speed=0;
mspeed=0;
speedup=true;
state=0;
crying=false;
rage=0;
touchpossible=true;

//// rain part
partrain= part_type_create();
wpart=partrain;
room_speeder=game_get_speed(gamespeed_fps);
// always the same copy paste
part_type_color2(wpart,c_blue,c_aqua);
part_type_sprite(wpart,sLine,0,0,0);
part_type_scale(wpart,0.5,0.5);
part_type_size(wpart,0.7,1,0,0);
part_type_alpha2(wpart,0.1,0.3);
part_type_speed(wpart,6,6,0,0);
part_type_direction(wpart,270,270,0,0);
part_type_orientation(wpart,260,260,0,0,false);
part_type_gravity(wpart,0.3,260);
part_type_life(wpart,room_speeder*0.5,room_speeder*1);
part_type_blend(wpart,0);
