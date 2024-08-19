gW=global.gameWidth;
gH=global.gameHeight;
scaler=global.scaler;
scale=(0.5+1*global.GUI)*scaler;
poolsliderit=sprite_get_width(sSlider)*0.5*scale;


self.x=round(gW*0.75-poolsliderit);

if (global.isAndroid)
{
self.y=round(gH*0.15);
} else {
self.y=round(gH*0.25);	
}

text="Sound FX: ";
var settingsmap = ds_map_secure_load("settings.sav")
global.volume_sfx=ds_map_find_value(settingsmap,"volume_sfx");
my_x=round(self.x+poolsliderit);
my_y=round(self.y-60-(40*global.GUI*global.GUI*scaler));
value_ = global.volume_sfx;
max_value_ = 1;
locker=1;
selected_ = false;
image_speed = 0;
image_index = 0;

image_xscale=scale;
image_yscale=1;


//SCRIBBLE
color="[#FFFFFF]";
scale=scaler*1;
//textalpha="[alpha,"+string(insert_amount)+"]";
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";
textwhole=string(textscale)+"[fa_center][fa_middle]"+string(color)+string(text);
widthWhole=sprite_width*value_*(1/image_xscale);
xWhole=x+(sprite_width*value_);