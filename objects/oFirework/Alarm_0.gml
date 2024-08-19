/// @desc
room_speeder=game_get_speed(gamespeed_fps);

// Particle trail:
if (bosssprite!=noone) {oFollowPlayer.target=self.id;}
partTrail= part_type_create();
wpart=partTrail;

t_color2_color1=col1; t_color2_color2=col2;t_sprite_sprite=sFirework;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=1;t_size_min=0.50;
t_size_max=1;t_size_inc=-0.01;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0;t_speed_min=0.50;t_speed_max=0.03;t_speed_inc=-0.01;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=5;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.02;t_grav_dir=270;
t_life_min=room_speeder*0.50;t_life_max=room_speeder*1;t_blend=1;//p_min=5;p_max=10;

// always the same
part_type_color2(wpart,t_color2_color1,t_color2_color2);
part_type_sprite(wpart,t_sprite_sprite,t_sprite_animat,t_sprite_stretch,t_sprite_random);
part_type_scale(wpart,t_scale_xscale,t_scale_yscale);
part_type_size(wpart,t_size_min,t_size_max,t_size_inc,t_size_wiggle);
part_type_alpha2(wpart,t_alpha2_alpha1,t_alpha2_alpha2);
part_type_speed(wpart,t_speed_min,t_speed_max,t_speed_inc,t_speed_wiggle);
part_type_direction(wpart,t_dir_min,t_dir_max,t_dir_inc,t_dir_wiggle);
part_type_orientation(wpart,t_ang_min,t_ang_max,t_ang_inc,t_ang_wiggle,t_ang_rela);
part_type_gravity(wpart,t_grav,t_grav_dir);
part_type_life(wpart,t_life_min,t_life_max);
part_type_blend(wpart,t_blend);




// firework one:
partWork1= part_type_create();
wpart=partWork1;

t_color2_color1=col1; t_color2_color2=col2;t_sprite_sprite=sFirework;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=1;t_size_min=1;
t_size_max=2;t_size_inc=-0.01;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0;t_speed_min=1.50;t_speed_max=4;t_speed_inc=-0.05;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.02;t_grav_dir=270;
t_life_min=room_speeder*1;t_life_max=room_speeder*2;t_blend=1;//p_min=100;p_max=150;

// always the same
part_type_color2(wpart,t_color2_color1,t_color2_color2);
part_type_sprite(wpart,t_sprite_sprite,t_sprite_animat,t_sprite_stretch,t_sprite_random);
part_type_scale(wpart,t_scale_xscale,t_scale_yscale);
part_type_size(wpart,t_size_min,t_size_max,t_size_inc,t_size_wiggle);
part_type_alpha2(wpart,t_alpha2_alpha1,t_alpha2_alpha2);
part_type_speed(wpart,t_speed_min,t_speed_max,t_speed_inc,t_speed_wiggle);
part_type_direction(wpart,t_dir_min,t_dir_max,t_dir_inc,t_dir_wiggle);
part_type_orientation(wpart,t_ang_min,t_ang_max,t_ang_inc,t_ang_wiggle,t_ang_rela);
part_type_gravity(wpart,t_grav,t_grav_dir);
part_type_life(wpart,t_life_min,t_life_max);
part_type_blend(wpart,t_blend);

if !(special)
{
// firework two:
partWork2= part_type_create();
wpart=partWork2;

t_color2_color1=col1; t_color2_color2=col2;t_sprite_sprite=sFirework;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=1;t_size_min=1;
t_size_max=2;t_size_inc=-0.01;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0;t_speed_min=0.50;t_speed_max=3;t_speed_inc=-0.02;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.02;t_grav_dir=270;
t_life_min=room_speeder*1;t_life_max=room_speeder*2;t_blend=1;//p_min=100;p_max=150;
// always the same
part_type_color2(wpart,t_color2_color1,t_color2_color2);
part_type_sprite(wpart,t_sprite_sprite,t_sprite_animat,t_sprite_stretch,t_sprite_random);
part_type_scale(wpart,t_scale_xscale,t_scale_yscale);
part_type_size(wpart,t_size_min,t_size_max,t_size_inc,t_size_wiggle);
part_type_alpha2(wpart,t_alpha2_alpha1,t_alpha2_alpha2);
part_type_speed(wpart,t_speed_min,t_speed_max,t_speed_inc,t_speed_wiggle);
part_type_direction(wpart,t_dir_min,t_dir_max,t_dir_inc,t_dir_wiggle);
part_type_orientation(wpart,t_ang_min,t_ang_max,t_ang_inc,t_ang_wiggle,t_ang_rela);
part_type_gravity(wpart,t_grav,t_grav_dir);
part_type_life(wpart,t_life_min,t_life_max);
part_type_blend(wpart,t_blend);
} else {

//NOTHING	
	
	
}
alarm[1]=timer;
activated=true;
