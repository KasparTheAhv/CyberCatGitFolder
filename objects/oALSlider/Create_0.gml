gW=global.gameWidth;
gH=global.gameHeight;
scaler=global.scaler;
scale=(0.5+1*0.5);
scale=scale*scaler;
poolsliderit=sprite_get_width(sSlider)*0.5*scale;
self.x=round(gW*0.2-poolsliderit);
self.y=round(gH*0.7);
text="Transparency: ";
var settingsmap = ds_map_secure_load("settings.sav")
global.AL=0.1+ds_map_find_value(settingsmap,"setTransparency");
my_x=round(self.x+poolsliderit);
my_y=round(self.y-60-(40*global.GUI*global.GUI*scaler));
value_ = global.AL-0.1;
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