/// @desc room controller for multiple instances at the same time
// Create essential objects in room:
global.leapsthissession=0;
game_set_speed(global.GFX2, gamespeed_fps);
if (os_type==os_windows)
{
	
}
canrevive=true;

if (global.GFX3==0)
{
	layer_enable_fx("Leaves",false);
}
GFX1=global.GFX1;

if !(instance_exists(oMusicController))
{
instance_create_layer(x,y,"BefEdge",oMusicController);
}
room_speeder=game_get_speed(gamespeed_fps);

view_visible[1]=false;


alarm[11]=600;
room2bookgiven=false;
room9bookgiven=false;
room16eggTriggered=false;
room16egg2Triggered=false;
firstnippy=0;
revived=false;
PrevDrawStateVS1=noone;
PrevDrawStateVS2=noone;
PrevDrawStateAK=noone;
PrevDrawStatePA=noone;
PrevDrawStateGU=noone;
PrevDrawStateJMP=noone;
global.reading=false;
global.ongui=false;
alarm[4]=10;
// Butterfly spawn trigger
if instance_exists(oFlower)
{
	alarm[9]=irandom_range(200,500);
}

if (room!=Room0) 
{
	if (room!=Room4) && (room!=Room6)
	{
	instance_create_layer(x,y,"Characters",oAttackKey);
	}
	
	instance_create_layer(x,y,"Particles",oPause);
	instance_create_layer(x,y,"Particles",oBook);
	instance_create_layer(x,y,"Particles",oMagnify);
	instance_create_layer(x,y,"Characters",oGUIBAR);
	global.ongui=true;
}
if (room==Room0) 
{
	global.booktutsequence=1;
	instance_create_layer(x,y,"Particles",oPause);
	instance_create_layer(x,y,"Particles",oBook);
	instance_create_layer(x,y,"Particles",oMagnify);
	if !instance_exists(oGUIBAR)
	{
		with(instance_create_layer(x,y,"Characters",oGUIBAR))
		{
		joonista=false;	
		}
	}
	with(oPause) {joonista=false;}
	with(oMagnify) {joonista=false;}
	with(oBook) {joonista=false;}
}
instance_create_layer(self.x,self.y,"Characters",oFollowPlayer);
// show jump key

if (global.jumpkey==1)
{
instance_create_layer(x,y,"Particles",oJumpKey);	
}

//
if layer_exists("Backgrounds")
{
var cloudlay = layer_background_get_id("Backgrounds");
layer_background_xscale(cloudlay, 0.5);
layer_background_yscale(cloudlay, 0.5);
}
tmap = layer_tilemap_get_id("Collision");
// catnip movement
swiper=0;
swipdir=true;
alarm[0]=1;
// deadmouse fade
alarm[1]=1;
// bird fade
alarm[2]=1;
// squirrel timermod
timermod=1;
// Lvl unlocker
if (room!=Room1Tester) 
{

var myroom=room_get_name(room);
myroom = string_delete(myroom, 1, 4);
myroom=real(myroom); // room nr
if (room!=Room0) 
{
	
	if instance_exists(oPlayControllerA) && (global.GoogleConnected)
	{
	oPlayControllerA.alarm[2]=5;
	}
	
	var settingsmap=ds_map_secure_load("settings.sav");
	maxlvl=ds_map_find_value(settingsmap,"maxlvl");
	if is_undefined(maxlvl) {maxlvl=0;}
	
	
	if (maxlvl<myroom) {
	ds_map_set(settingsmap,"maxlvl",myroom);
	ds_map_secure_save(settingsmap,"settings.sav");
	}
}
var settingsmap=ds_map_secure_load("settings.sav");
ds_map_set(settingsmap,"lastlvl",myroom);
ds_map_secure_save(settingsmap,"settings.sav");
}
// 


/////////// PARTICLES ONLY AFTER THIS
//Particles gas
suvakas=irandom_range(4,6);
suurendaja=round(suvakas);
//def sets
Pspeed=7;Plife=room_speeder*1.1; Palpha=0.8; PsizeInc=-0.03; 
PspeedInc=-0.07; Pblend=false; PaInc=0;
//particle setup
part_sys3= part_system_create();
part_system_automatic_draw(part_sys3, false);
part_sys= part_system_create_layer("Particles",true);
pemit = part_emitter_create(part_sys);
// GAS BIG RED
part111 = part_type_create();
wpart=part111;
t_color2_color1=$2323ff;t_color2_color2=$000061;t_sprite_sprite=sPaGas;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=2;t_scale_yscale=2;t_size_min=0.30;
t_size_max=1;t_size_inc=-0.01;t_size_wiggle=0.04;t_alpha2_alpha1=0.95;
t_alpha2_alpha2=-0.25;t_speed_min=1;t_speed_max=2;t_speed_inc=-0.02;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=359;t_ang_inc=10;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.15;t_grav_dir=90;
t_life_min=room_speeder*0.70;t_life_max=room_speeder*1;t_blend=1;//p_min=10;p_max=15;
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
//  GAS green
part1 = part_type_create();
wpart=part1;
t_color2_color1=make_color_hsv(76,246,173);t_color2_color2=make_color_hsv(39,254,135);t_sprite_sprite=sPaGas;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1.2;t_scale_yscale=1.2;t_size_min=0.20;
t_size_max=1;t_size_inc=-0.01;t_size_wiggle=0.04;t_alpha2_alpha1=0.95;
t_alpha2_alpha2=-0.25;t_speed_min=0.70;t_speed_max=1.75;t_speed_inc=-0.03;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=359;t_ang_inc=10;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.15;t_grav_dir=90;
t_life_min=room_speeder*0.60;t_life_max=room_speeder*0.9;t_blend=1;//p_min=10;p_max=15;
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
// knowledge into book
part999= part_type_create();
wpart=part999;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(135,209,255);t_color2_color2=make_color_hsv(251,240,255);t_sprite_sprite=sPa8;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=1;t_size_min=0.5;
t_size_max=1.25;t_size_inc=-0.01;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0;t_speed_min=0.70;t_speed_max=1.70;t_speed_inc=-0.01;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0;t_grav_dir=270;
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


// Bird base
part2 = part_type_create();
Pscale=2;Palpha=1;Pspeed=3;PsizeInc=-0.05; PspeedInc=-0.08;Pblend=true;
whatparticle=sPaPesa;
part_type_sprite(part2 ,whatparticle, 0, 0, 1);
part_type_scale(part2,Pscale,Pscale);
part_type_size(part2,1,0.8,PsizeInc,0);
part_type_alpha2(part2,Palpha,0);
part_type_speed(part2,Pspeed,Pspeed,PspeedInc,0);
part_type_direction(part2,0,359,0,0);
part_type_orientation(part2,0,0,PaInc,0,true);
part_type_gravity(part2,0.1,270);
part_type_life(part2,Plife*0.7,Plife*1.2);
part_type_blend(part2,Pblend);
//  GAS red
part3 = part_type_create();
Pscale=3;Palpha=0.7;Pspeed=2;PsizeInc=-0.05; PspeedInc=-0.08;Pblend=true;
whatparticle=sPaGas;
part_type_color2(part3,c_red,$aadbff);
part_type_sprite(part3 ,whatparticle, 0, 0, 1);
part_type_scale(part3,Pscale,Pscale);
part_type_size(part3,1,0.8,PsizeInc,0);
part_type_alpha2(part3,Palpha,0);
part_type_speed(part3,Pspeed,Pspeed,PspeedInc,0);
part_type_direction(part3,0,359,0,0);
part_type_orientation(part3,0,0,PaInc,0,true);
part_type_gravity(part3,0.1,90);
part_type_life(part3,Plife*0.5,Plife);
part_type_blend(part3,Pblend);
// WAter
part4 = part_type_create();
part_type_shape(part4,pt_shape_ring);
//part_type_sprite(part4 , pt_shape_circle, 1, 0, 0);
part_type_scale(part4,0.25,0.25);
part_type_size(part4,0.5,0.6,-0.01,0);
part_type_color2(part4,c_aqua,c_blue);
part_type_alpha2(part4,1,0.95);
part_type_speed(part4,1.5,2,0,0);
part_type_direction(part4,0,190,0,0);
part_type_gravity(part4,0.2,270);
part_type_life(part4,room_speeder*0.45,room_speeder*0.65);
part_type_blend(part4,true);
// swamp
part24 = part_type_create();
part_type_shape(part24,pt_shape_ring);
//part_type_sprite(part4 , pt_shape_circle, 1, 0, 0);
part_type_scale(part24,0.25,0.25);
part_type_size(part24,0.5,0.6,-0.01,0);
part_type_color2(part24,c_lime,c_green);
part_type_alpha2(part24,1,0.95);
part_type_speed(part24,1.5,2,0,0);
part_type_direction(part24,0,190,0,0);
part_type_gravity(part24,0.2,270);
part_type_life(part24,room_speeder*0.45,room_speeder*0.65);
part_type_blend(part24,true);
// player god burst
part5 = part_type_create();
Pscale=3;Palpha=0.7;Pspeed=2;PsizeInc=-0.03; PspeedInc=-0.05;Pblend=true;
whatparticle=sPaGas;
part_type_color2(part5,c_aqua,$870d56);
part_type_sprite(part5 ,whatparticle, 0, 0, 1);
part_type_scale(part5,Pscale,Pscale);
part_type_size(part5,1,0.8,PsizeInc,0);
part_type_alpha2(part5,Palpha,0);
part_type_speed(part5,Pspeed,Pspeed,PspeedInc,0);
part_type_direction(part5,0,359,0,0);
part_type_orientation(part5,0,0,PaInc,0,true);
part_type_gravity(part5,0.1,90);
part_type_life(part5,Plife*2,Plife*3);
part_type_blend(part5,Pblend);
////  GAS (dog explode)
part6 = part_type_create();
Pscale=4;Palpha=0.9;Pspeed=2;PsizeInc=-0.02; PspeedInc=-0.03;Pblend=true;
whatparticle=sPaGas;
part_type_color2(part6,$1d1d1d,c_red);
part_type_sprite(part6 ,whatparticle, 0, 0, 1);
part_type_scale(part6,Pscale,Pscale);
part_type_size(part6,1,0.8,PsizeInc,0);
part_type_alpha2(part6,Palpha,0);
part_type_speed(part6,Pspeed,Pspeed,PspeedInc,0);
part_type_direction(part6,0,359,0,0);
part_type_orientation(part6,0,0,PaInc,0,true);
part_type_gravity(part6,0.1,90);
part_type_life(part6,Plife*2,Plife*3);
part_type_blend(part6,Pblend);

//  GOD FX
part8 = part_type_create();
whatparticle=sPaGas;
Pcol1=make_color_hsv(143,177,255); 
Pcol2=make_color_hsv(177,251,255);
part_type_color2(part8,Pcol1,Pcol2);
part_type_sprite(part8 ,whatparticle, 0, 0, 1);
part_type_scale(part8,2.5,0.42);
part_type_size(part8,0.5,1.1,-0.02,0);
part_type_alpha2(part8,0.53,0);
part_type_speed(part8,3.7,3.9,-0.2,0);
part_type_direction(part8,0,359,0,0);
part_type_orientation(part8,0,0,0,0,true);
part_type_gravity(part8,0.1,90);
part_type_life(part8,room_speeder*0.3,room_speeder*1);
part_type_blend(part8,Pblend);
// Glass shard milk
part9 = part_type_create();
//part_type_shape(part9,pt_shape_ring);
part_type_color2(part9,c_white,c_white);
part_type_sprite(part9 , sMilkBroken, false, false, true);
part_type_scale(part9,0.5,0.5);
part_type_size(part9,1,1,-0.01,0);
part_type_alpha2(part9,1,0);
part_type_speed(part9,2,2.5,0,0);
part_type_orientation(part9,0,359,2,0,false);
part_type_direction(part9,10,180,0,0);
part_type_gravity(part9,0.15,270);
part_type_life(part9,room_speeder*0.45,room_speeder*0.65);
part_type_blend(part9,true);
// blue lightning spark
part10 = part_type_create();
whatparticle=sPaElec;
Pcol1=make_color_hsv(113,255,255); 
Pcol2=make_color_hsv(100,0,255);
//part_type_shape(part9,pt_shape_ring);
part_type_color2(part10,Pcol1,Pcol2);
part_type_sprite(part10 , whatparticle, false, false, true);
part_type_scale(part10,2,1);
part_type_size(part10,0.5,1.15,-0.01,0);
part_type_alpha2(part10,1,0);
part_type_speed(part10,2,2.25,-0.09,0);
part_type_orientation(part10,0,359,1.25,0,false);
part_type_direction(part10,0,359,0,0);
part_type_gravity(part10,0,0);
part_type_life(part10,room_speeder*0.12,room_speeder*0.25);
part_type_blend(part10,true);
//  uus megacorruptionfireball
part12 = part_type_create();
whatparticle=sPaElec;
Pcol1=make_color_hsv(212,207,255); 
Pcol2=make_color_hsv(254,28,255);
part_type_color2(part12,Pcol1,Pcol2);
part_type_sprite(part12 ,whatparticle, 0, 0, 1);
part_type_scale(part12,6.3,5.5);
part_type_size(part12,1.4,1.8,-0.07,0);
part_type_alpha2(part12,1,0);
part_type_speed(part12,2,2,-2.81,0);
part_type_direction(part12,0,359,0,0);
part_type_orientation(part12,0,0,-2.41,0,true);
part_type_gravity(part12,0,0);
part_type_life(part12,room_speeder*0.8,room_speeder*1);
part_type_blend(part12,Pblend);
// Glass shard TRain
part13 = part_type_create();
//part_type_shape(part9,pt_shape_ring);
part_type_color2(part13,c_white,c_white);
part_type_sprite(part13 ,sWindowsBroken, false, false, true);
part_type_scale(part13,1,1);
part_type_size(part13,1,1,-0.01,0);
part_type_alpha2(part13,1,0);
part_type_speed(part13,2,2.5,0,0);
part_type_orientation(part13,0,359,2,0,false);
part_type_direction(part13,10,180,0,0);
part_type_gravity(part13,0.15,270);
part_type_life(part13,room_speeder*0.7,room_speeder*0.8);
part_type_blend(part13,true);
////  GAS (dog explode)
part14 = part_type_create();
//part_type_shape(part9,pt_shape_ring);
part_type_color2(part14,c_white,c_gray);
part_type_sprite(part14 , sPaFeather, false, false, true);
part_type_scale(part14,1,1);
part_type_size(part14,0.5,1,-0.01,0);
part_type_alpha2(part14,1,0);
part_type_speed(part14,1.1,2.2,-0.03,0);
part_type_orientation(part14,0,359,2,0,false);
part_type_direction(part14,0,360,0,0);
part_type_gravity(part14,0.08,270);
part_type_life(part14,room_speeder*0.2,room_speeder*1.4);
part_type_blend(part14,true);
// Egg shard explosion
part15 = part_type_create();
//part_type_shape(part9,pt_shape_ring);
part_type_color2(part15,c_white,c_white);
part_type_sprite(part15 , sPaMuna, false, false, true);
part_type_scale(part15,1,1);
part_type_size(part15,1,1,-0.01,0);
part_type_alpha2(part15,1,0);
part_type_speed(part15,2,2.5,0,0);
part_type_orientation(part15,0,359,3,0,false);
part_type_direction(part15,0,359,0,0);
part_type_gravity(part15,0.1,270);
part_type_life(part15,room_speeder*0.45,room_speeder*0.65);
part_type_blend(part15,true);
//  attack fx
part16 = part_type_create();
wpart=part16;
t_color2_color2=$ff433f;t_color2_color1=$ff9492;t_sprite_sprite=sPaAttackGas;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=0;
t_scale_xscale=0.75;t_scale_yscale=1;t_size_min=0;
t_size_max=0.20;t_size_inc=0.014;t_size_wiggle=0;t_alpha2_alpha1=0;t_alpha2_alpha3=0.15;
t_alpha2_alpha2=0.95;t_speed_min=1;t_speed_max=1.5;t_speed_inc=-0.01;
t_speed_wiggle=0;t_dir_min=370;t_dir_max=380;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.01;t_grav_dir=270;
t_life_min=room_speeder*0.5;t_life_max=room_speeder*0.9;t_blend=0;//p_min=1;p_max=1;
part_type_color2(wpart,t_color2_color1,t_color2_color2);
part_type_sprite(wpart,t_sprite_sprite,t_sprite_animat,t_sprite_stretch,t_sprite_random);
part_type_scale(wpart,t_scale_xscale,t_scale_yscale);
part_type_size(wpart,t_size_min,t_size_max,t_size_inc,t_size_wiggle);
part_type_alpha3(wpart,t_alpha2_alpha1,t_alpha2_alpha2,t_alpha2_alpha3);
part_type_speed(wpart,t_speed_min,t_speed_max,t_speed_inc,t_speed_wiggle);
part_type_direction(wpart,t_dir_min,t_dir_max,t_dir_inc,t_dir_wiggle);
part_type_orientation(wpart,t_ang_min,t_ang_max,t_ang_inc,t_ang_wiggle,t_ang_rela);
part_type_gravity(wpart,t_grav,t_grav_dir);
part_type_life(wpart,t_life_min,t_life_max);
part_type_blend(wpart,t_blend)
//  attack fx VOL2
part166 = part_type_create();
wpart=part166;
t_color2_color2=$ff433f;t_color2_color1=$ff9492;t_sprite_sprite=sPaAttackGas2;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=0;
t_scale_xscale=0.75;t_scale_yscale=1;t_size_min=0;
t_size_max=0.20;t_size_inc=0.014;t_size_wiggle=0;t_alpha2_alpha1=0;t_alpha2_alpha3=0.15;
t_alpha2_alpha2=0.95;t_speed_min=1;t_speed_max=1.5;t_speed_inc=-0.01;
t_speed_wiggle=0;t_dir_min=160;t_dir_max=170;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.01;t_grav_dir=270;
t_life_min=room_speeder*0.5;t_life_max=room_speeder*0.9;t_blend=0;//p_min=1;p_max=1;
part_type_color2(wpart,t_color2_color1,t_color2_color2);
part_type_sprite(wpart,t_sprite_sprite,t_sprite_animat,t_sprite_stretch,t_sprite_random);
part_type_scale(wpart,t_scale_xscale,t_scale_yscale);
part_type_size(wpart,t_size_min,t_size_max,t_size_inc,t_size_wiggle);
part_type_alpha3(wpart,t_alpha2_alpha1,t_alpha2_alpha2,t_alpha2_alpha3);
part_type_speed(wpart,t_speed_min,t_speed_max,t_speed_inc,t_speed_wiggle);
part_type_direction(wpart,t_dir_min,t_dir_max,t_dir_inc,t_dir_wiggle);
part_type_orientation(wpart,t_ang_min,t_ang_max,t_ang_inc,t_ang_wiggle,t_ang_rela);
part_type_gravity(wpart,t_grav,t_grav_dir);
part_type_life(wpart,t_life_min,t_life_max);
part_type_blend(wpart,t_blend)


////// UUED EFEKTID JA UUS SÜSTEEM ///////

//// Cyport line blast
part17= part_type_create();
wpart=part17;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(133,251,255);t_color2_color2=make_color_hsv(194,251,255);
t_sprite_sprite=sPa4;t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;t_scale_xscale=0.50;
t_scale_yscale=1.50;t_size_min=0.40;t_size_max=0.70;t_size_inc=0.01;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0;t_speed_min=0.05;t_speed_max=3;t_speed_inc=-0.05;t_speed_wiggle=0;t_dir_min=0;
t_dir_max=359;t_dir_inc=0;t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;t_ang_wiggle=0;
t_ang_rela=1;t_grav=0;t_grav_dir=270;t_life_min=0.60;t_life_max=0.90;t_blend=1;//p_min=40;p_max=50;
// always the same copy paste
part_type_color2(wpart,t_color2_color1,t_color2_color2);
part_type_sprite(wpart,t_sprite_sprite,t_sprite_animat,t_sprite_stretch,t_sprite_random);
part_type_scale(wpart,t_scale_xscale,t_scale_yscale);
part_type_size(wpart,t_size_min,t_size_max,t_size_inc,t_size_wiggle);
part_type_alpha2(wpart,t_alpha2_alpha1,t_alpha2_alpha2);
part_type_speed(wpart,t_speed_min,t_speed_max,t_speed_inc,t_speed_wiggle);
part_type_direction(wpart,t_dir_min,t_dir_max,t_dir_inc,t_dir_wiggle);
part_type_orientation(wpart,t_ang_min,t_ang_max,t_ang_inc,t_ang_wiggle,t_ang_rela);
part_type_gravity(wpart,t_grav,t_grav_dir);
part_type_life(wpart,room_speeder*t_life_min,room_speeder*t_life_max);
part_type_blend(wpart,t_blend);

//// Cyport smoke blast
part18= part_type_create();
wpart=part18;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(133,251,255);t_color2_color2=make_color_hsv(191,139,187);t_sprite_sprite=sPa5;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;t_scale_xscale=1;t_scale_yscale=1;t_size_min=0.35;
t_size_max=1.25;t_size_inc=0.01;t_size_wiggle=0;t_alpha2_alpha1=1;t_alpha2_alpha2=0;t_speed_min=2;t_speed_max=4;
t_speed_inc=-0.04;t_speed_wiggle=0;t_dir_min=0;t_dir_max=360;t_dir_inc=0;t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;
t_ang_inc=0;t_ang_wiggle=0;t_ang_rela=1;t_grav=0.10;t_grav_dir=90;t_life_min=0.40;t_life_max=1;t_blend=1;//p_min=60; p_max=70;
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
part_type_life(wpart,room_speeder*t_life_min,room_speeder*t_life_max);
part_type_blend(wpart,t_blend);

// Cyport trail
part19= part_type_create();
wpart=part19;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(159,239,255);t_color2_color2=make_color_hsv(199,77,231);t_sprite_sprite=sPa1;t_sprite_animat=0;t_sprite_stretch=0;
t_sprite_random=0;t_scale_xscale=0.50;t_scale_yscale=1.20;t_size_min=0.50;t_size_max=1;t_size_inc=0.01;t_size_wiggle=0;
t_alpha2_alpha1=1;t_alpha2_alpha2=0;t_speed_min=0.50;t_speed_max=0.50;t_speed_inc=0.06;t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;
t_dir_inc=0;t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;t_ang_wiggle=0;t_ang_rela=1;t_grav=0;
t_grav_dir=270;t_life_min=0.50;t_life_max=1;t_blend=1;//p_min=5;p_max=10;
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
part_type_life(wpart,room_speeder*t_life_min,room_speeder*t_life_max);
part_type_blend(wpart,t_blend);

// Part 20 moved to oBook

// God shockwave
part21= part_type_create();
wpart=part21;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(100,243,255);t_color2_color2=make_color_hsv(168,250,255);t_sprite_sprite=sPa6;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=0;
t_scale_xscale=0.5;t_scale_yscale=1.5;t_size_min=0.20;
t_size_max=0.20;t_size_inc=0.1;t_size_wiggle=0;t_alpha2_alpha1=0.95;
t_alpha2_alpha2=-0.5;t_speed_min=7;t_speed_max=7;t_speed_inc=-0.02;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0;t_grav_dir=270;
t_life_min=room_speeder*1;t_life_max=room_speeder*1;t_blend=1;//p_min=30;p_max=30;
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

// dog step
part7= part_type_create();
wpart=part7;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(201,240,255);t_color2_color2=make_color_hsv(124,255,209);t_sprite_sprite=sPa10;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=0.75;t_scale_yscale=0.40;t_size_min=0.25;
t_size_max=1;t_size_inc=-0.02;t_size_wiggle=0;t_alpha2_alpha1=0.80;
t_alpha2_alpha2=-0.1;t_speed_min=2;t_speed_max=3;t_speed_inc=-0.01;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.07;t_grav_dir=90;
t_life_min=room_speeder*0.50;t_life_max=room_speeder*1;t_blend=1;//p_min=5;p_max=25;
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

//dog hit
part22 = part_type_create();
wpart=part22;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(201,240,255);t_color2_color2=make_color_hsv(124,255,209);t_sprite_sprite=sPa10;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=0.50;t_size_min=0.25;
t_size_max=1;t_size_inc=-0.02;t_size_wiggle=0;t_alpha2_alpha1=0.90;
t_alpha2_alpha2=0;t_speed_min=2;t_speed_max=3;t_speed_inc=-0.01;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.10;t_grav_dir=90;
t_life_min=room_speeder*0.50;t_life_max=room_speeder*1;t_blend=1;//p_min=35;p_max=40;
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

// bossfrog dead shockwave
part23= part_type_create();
wpart=part23;
// paste failist ja tõmba kokkupoole need
t_color2_color2=make_colour_hsv(42,188,255);t_color2_color1=make_color_hsv(168,250,255);t_sprite_sprite=sPa6;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=0;
t_scale_xscale=0.5;t_scale_yscale=1.5;t_size_min=0.20;
t_size_max=0.20;t_size_inc=0.1;t_size_wiggle=0;t_alpha2_alpha1=0.95;
t_alpha2_alpha2=-0.5;t_speed_min=7;t_speed_max=7;t_speed_inc=-0.02;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0;t_grav_dir=270;
t_life_min=room_speeder*1;t_life_max=room_speeder*1;t_blend=1;//p_min=30;p_max=30;
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

// projectile shield
part25= part_type_create();
wpart=part25;
// paste failist ja tõmba kokkupoole need
t_color2_color1=make_color_hsv(124,220,255);t_color2_color2=make_color_hsv(181,221,255);t_sprite_sprite=sPa9;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=0;
t_scale_xscale=1.50;t_scale_yscale=1.50;t_size_min=1.50;
t_size_max=1.60;t_size_inc=0.01;t_size_wiggle=0;t_alpha2_alpha1=0.30;
t_alpha2_alpha2=0;t_speed_min=0;t_speed_max=0;t_speed_inc=0;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=359;t_dir_inc=1;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0;t_grav_dir=270;
t_life_min=room_speeder*0.50;t_life_max=room_speeder*0.50;t_blend=1;//p_min=1;p_max=1;
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


// toss korsten
part26= part_type_create();
wpart=part26;
// paste failist ja tõmba kokkupoole need
t_color2_color1=c_white;t_color2_color2=c_white;t_sprite_sprite=sPa19;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=1;t_size_min=1;
t_size_max=1;t_size_inc=-0.01;t_size_wiggle=0;t_alpha2_alpha1=0.20;
t_alpha2_alpha2=0;t_speed_min=3;t_speed_max=4;t_speed_inc=-0.02;
t_speed_wiggle=0;t_dir_min=80;t_dir_max=100;t_dir_inc=1.35;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.10;t_grav_dir=90;
t_life_min=room_speeder*0.40;t_life_max=room_speeder*1;t_blend=1;//p_min=1;p_max=2;
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

// projectile shield
part27= part_type_create();
wpart=part27;
// paste failist ja tõmba kokkupoole need
t_color2_color1=c_blue;t_color2_color2=c_green;t_sprite_sprite=sPa9;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=0;
t_scale_xscale=2;t_scale_yscale=3.5;t_size_min=1.50;
t_size_max=1.60;t_size_inc=0.01;t_size_wiggle=0;t_alpha2_alpha1=0.20;
t_alpha2_alpha2=0;t_speed_min=0;t_speed_max=0;t_speed_inc=0;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=0;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=0;t_grav=0;t_grav_dir=270;
t_life_min=room_speeder*0.50;t_life_max=room_speeder*0.50;t_blend=1;//p_min=1;p_max=1;
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


// bullet break Catnip
part28= part_type_create();
wpart=part28;
// paste failist ja tõmba kokkupoole need
t_color2_color1=c_white;t_color2_color2=c_white;t_sprite_sprite=sBulletPart;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1.50;t_scale_yscale=1.50;t_size_min=0.75;
t_size_max=1;t_size_inc=-0.02;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0.30;t_speed_min=1;t_speed_max=2.30;t_speed_inc=-0.04;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=180;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.07;t_grav_dir=270;
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

// bullet break - lamp
part29= part_type_create();
wpart=part29;
// paste failist ja tõmba kokkupoole need
t_color2_color1=c_white;t_color2_color2=c_white;t_sprite_sprite=sBulletPartLamp;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1.50;t_scale_yscale=1.50;t_size_min=0.75;
t_size_max=1;t_size_inc=-0.02;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0.30;t_speed_min=1;t_speed_max=2.30;t_speed_inc=-0.04;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=180;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.07;t_grav_dir=270;
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

// bullet break - Gear
part30= part_type_create();
wpart=part30;
// paste failist ja tõmba kokkupoole need
t_color2_color1=c_white;t_color2_color2=c_white;t_sprite_sprite=sBulletPartGear;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1.50;t_scale_yscale=1.50;t_size_min=0.75;
t_size_max=1;t_size_inc=-0.02;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0.30;t_speed_min=1;t_speed_max=2.30;t_speed_inc=-0.04;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=180;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.07;t_grav_dir=270;
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

// bullet break - squir
part31= part_type_create();
wpart=part31;
// paste failist ja tõmba kokkupoole need
t_color2_color1=c_white;t_color2_color2=c_white;t_sprite_sprite=sBulletSquirPart;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1.50;t_scale_yscale=1.50;t_size_min=0.75;
t_size_max=1;t_size_inc=-0.02;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0.30;t_speed_min=1;t_speed_max=2.30;t_speed_inc=-0.04;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=180;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.07;t_grav_dir=270;
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

// bullet break - soul
part32= part_type_create();
wpart=part32;
// paste failist ja tõmba kokkupoole need
t_color2_color1=c_white;t_color2_color2=c_white;t_sprite_sprite=sBulletSquirPart;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1.50;t_scale_yscale=1.50;t_size_min=0.75;
t_size_max=1;t_size_inc=-0.02;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0.30;t_speed_min=1;t_speed_max=2.30;t_speed_inc=-0.04;
t_speed_wiggle=0;t_dir_min=0;t_dir_max=180;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=1;t_grav=0.07;t_grav_dir=270;
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

//star
part33= part_type_create();
wpart=part33;
/// StarBurst ( green )
t_color2_color1=c_lime;t_color2_color2=c_aqua;t_sprite_sprite=sPa17;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=1;t_size_min=0.70;
t_size_max=1.20;t_size_inc=-0.01;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0;t_speed_min=1.50;t_speed_max=2.50;t_speed_inc=-0.03;
t_speed_wiggle=0;t_dir_min=45;t_dir_max=135;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=0;t_grav=0.05;t_grav_dir=270;
t_life_min=room_speed*0.50;t_life_max=room_speed*1.50;t_blend=1;//p_min=10;p_max=20;

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


// Star
part34= part_type_create();
wpart=part34;
/// StarBurst ( yellow )
t_color2_color1=c_yellow;t_color2_color2=c_aqua;t_sprite_sprite=sPa17;
t_sprite_animat=0;t_sprite_stretch=0;t_sprite_random=1;
t_scale_xscale=1;t_scale_yscale=1;t_size_min=0.70;
t_size_max=1.20;t_size_inc=-0.01;t_size_wiggle=0;t_alpha2_alpha1=1;
t_alpha2_alpha2=0;t_speed_min=1.50;t_speed_max=2.50;t_speed_inc=-0.03;
t_speed_wiggle=0;t_dir_min=45;t_dir_max=135;t_dir_inc=0;
t_dir_wiggle=0;t_ang_min=0;t_ang_max=0;t_ang_inc=0;
t_ang_wiggle=0;t_ang_rela=0;t_grav=0.05;t_grav_dir=270;
t_life_min=room_speed*0.50;t_life_max=room_speed*1.50;t_blend=1;//p_min=10;p_max=20;

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
