/// @desc
flower_index=irandom_range(0,image_number-1);
var distance = distance_to_object(oFollowPlayer);
distance=clamp(distance,0,200);
alpha_level=(200-distance)*0.005+0.2;
glow=(((200-distance)*0.0025)+0.5)*255;
color=make_color_rgb(glow,glow,glow);
image_yscale=random_range(0.65,1);
image_xscale=image_yscale;
change=irandom_range(0,2000);