///// Create Event /////

// picks a random subimage
flower_index=irandom_range(0,image_number-1); 

// Distance from player
var distance = distance_to_object(oFollowPlayer); 
distance=clamp(distance,0,200); 

// Choose side 
image_xscale=choose(-1,1);

// Color and alpha calculations
alpha_level=(200-distance)*0.005+0.2;
glow=(((200-distance)*0.0025)+0.5)*255;
color=make_color_rgb(glow,glow,glow);

// Alters wave effect (so flowers wouldn't sway in sync)
change=irandom_range(0,2000);






