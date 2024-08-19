/// @desc shield

with (instance_create_layer(x-32,y+30,"Dog",oVineShield))
{
image_angle=90;
vinesegnr=1;	
newang=0;
myheight=4;
maxsegnr=8;
}

with (instance_create_layer(x+32,y+30,"Dog",oVineShield))
{
image_angle=90;
vinesegnr=1;	
newang=180;
myheight=5;
maxsegnr=10;
}

with (instance_create_layer(x-64,y+30,"Dog",oVineShield))
{
image_angle=90;
vinesegnr=1;	
newang=0;
myheight=6;
maxsegnr=12;
}

with (instance_create_layer(x+64,y+30,"Dog",oVineShield))
{
image_angle=90;
vinesegnr=1;	
newang=180;
myheight=7;
maxsegnr=14;
}