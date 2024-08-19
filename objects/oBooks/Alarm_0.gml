//calculate positioning
settingsmap=ds_map_secure_load("settings.sav");
maxbook=ds_map_find_value(settingsmap,"maxbook");
mitmesrida=booknr/9;
mitmesrida=ceil(mitmesrida);
mitmestulp=booknr-mitmesrida*9;
mitmestulp=9+(mitmestulp);
xmodifier=0+(0.1*mitmestulp);
ymodifier=0+(0.5*mitmesrida);
self.x=gW*xmodifier;
self.y=gH*ymodifier;
actualbook=booknr-1;


if (actualbook<=maxbook) {
	
	room_name= room_get_name(room);
	room_number=real(string_delete(room_name,1,4));
	if (actualbook<5) {if (room_number>=0){unlocked=true;}}
	if (actualbook==5)or(actualbook==6) {if (room_number>=1) {unlocked=true;}}
	if (actualbook==7) {if (room_number>=2) {unlocked=true;}}
	if (actualbook==8) {if (room_number>=9) {unlocked=true;}}
	}

if (unlocked) {image_index=actualbook;}




