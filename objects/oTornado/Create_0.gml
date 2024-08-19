//Create event

//To ensure a smooth deletion of tornado. Will make sense later! 

deleteMe = false;

//Delete Tornado - the range is the life of the tornado

alarm[10] = 300;

//Particles

var minSpeed = 0.005;
var maxSpeed = 0.01;
var minDir = 89.5;
var maxDir = 90.5;
var alpha = 0.15;
var gravAmount = 0.006;
var gravDir = 90;
var _color = $68fdfd;


//Create the particle system
part_steam_sys = oRoomController.part_sys;

//Create the particles 

var part_index = part_type_create();
part_steam_1 = part_index;
part_type_sprite(part_index,sPaGas,true,true,true);
part_type_size(part_index, 0.25, 0.5, 0, 0);
part_type_color1(part_index,_color);
part_type_alpha2(part_index,alpha,0);
part_type_gravity(part_index,gravAmount,gravDir);
part_type_speed(part_index, minSpeed, maxSpeed, 0, 0);
part_type_direction(part_index, minDir, maxDir, 0, 1);
part_type_life(part_index, 30, 60);

var part_index = part_type_create();
part_steam_2 = part_index;
part_type_sprite(part_index,sPaGas,true,true,true);
part_type_size(part_index, 0.25, 0.5, 0, 0);
part_type_color1(part_index,_color);
part_type_alpha2(part_index,alpha,0);
part_type_gravity(part_index,gravAmount,gravDir);
part_type_speed(part_index, minSpeed, maxSpeed, 0, 0);
part_type_direction(part_index, minDir, maxDir, 0, 1);
part_type_life(part_index, 30, 75);

var part_index = part_type_create();
part_steam_large = part_index;
part_type_sprite(part_index,sPaGas,true,true,true);
part_type_size(part_index, 0.5, 1, 0, 0);
part_type_color1(part_index,_color);
part_type_alpha2(part_index,alpha,0);
part_type_gravity(part_index,gravAmount,gravDir);
part_type_speed(part_index, minSpeed, maxSpeed, 0, 0);
part_type_direction(part_index, minDir, maxDir, 0, 1);
part_type_life(part_index, 30, 90);

var part_index = part_type_create();
part_steam_extra_large = part_index;		
part_type_sprite(part_index,sPaGas,true,true,true);
part_type_size(part_index, 0.75, 1.5, 0, 0);
part_type_color1(part_index,_color);
part_type_alpha2(part_index,alpha,0);
part_type_gravity(part_index,gravAmount,gravDir);
part_type_speed(part_index,minSpeed, maxSpeed, 0, 0);
part_type_direction(part_index, minDir, maxDir, 0, 1);
part_type_life(part_index, 30, 90);

//Rotational speed
room_speeder=game_get_speed(gamespeed_fps);
var rps = 0.5; //Rounds per second
spd = 360/room_speeder * rps;

//Dimensions
xamp[0] = 32; //Width
yamp[0] = 16; //Height

xamp[1] = 16;
yamp[1] = 8;

xamp[2] = 8;
yamp[2] = 4;

xamp[3] = 4;
yamp[3] = 2;

//Offsets
centerX[0] = x;
centerY[0] = y-45;

centerX[1] = x;
centerY[1] = y-30;

centerX[2] = x;
centerY[2] = y-15;

centerX[3] = x;
centerY[3] = y;

//Orbit init
orbitX[0] = 0;
orbitY[0] = 0;

orbitX[1] = 0;
orbitY[1] = 0;

orbitX[2] = 0;
orbitY[2] = 0;

orbitX[3] = 0;
orbitY[3] = 0;

//Time and counter
windCounter = 0;
time = 0;

//Depth init
