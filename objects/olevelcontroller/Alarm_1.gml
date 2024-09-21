/// @desc oLevel creation
var settingsmap=ds_map_secure_load("settings.sav");
var maxlvl=ds_map_find_value(settingsmap,"maxlvl");
// allowdraw
allowdraw=true;

// create new chapter button if available
if (maxlvl>=32) && !(instance_exists(oLvlChapter)) {
	instance_create_layer(x,y,layer,oLvlChapter);
	}
	
if (global.admin) && !(instance_exists(oLvlChapter)) {
	if (maxlvl<32) {ds_map_set(settingsmap,"maxlvl",32); ds_map_secure_save(settingsmap,"settings.sav");}
	instance_create_layer(x,y,layer,oLvlChapter);
	}
// delete old oLevels before creating new
with (oLevel)
{
	if (levelnr!=999) {instance_destroy();}
}

// pic csale calcs
var picScale=(global.menuH/410);
var levelButtonScale = picScale*2;

// level generation
var map= ds_map_secure_load("settings.sav");

// ad blockgates according to chapter
if (chapter==1)
{
	block1= ds_map_find_value(map,"LvlBlo1");
	if is_undefined(block1) {block1=0;} 
	block2= ds_map_find_value(map,"LvlBlo2");
	if is_undefined(block2) {block2=0;}
	block3= ds_map_find_value(map,"LvlBlo3");
	if is_undefined(block3) {block3=0;}
	block4= ds_map_find_value(map,"LvlBlo4");
	if is_undefined(block4) {block4=0;} 
	block5= ds_map_find_value(map,"LvlBlo5");
	if is_undefined(block5) {block5=0;}
	block6= ds_map_find_value(map,"LvlBlo6");
	if is_undefined(block6) {block6=0;}
	block7= ds_map_find_value(map,"LvlBlo7");
	if is_undefined(block7) {block7=0;} 
}
if (chapter==2)
{
	block1= ds_map_find_value(map,"LvlBlo8");
	if is_undefined(block1) {block1=0;} 
	block2= ds_map_find_value(map,"LvlBlo9");
	if is_undefined(block2) {block2=0;}
	block3= ds_map_find_value(map,"LvlBlo10");
	if is_undefined(block3) {block3=0;}
	block4= ds_map_find_value(map,"LvlBlo11");
	if is_undefined(block4) {block4=0;} 
	block5= ds_map_find_value(map,"LvlBlo12");
	if is_undefined(block5) {block5=0;}
	block6= ds_map_find_value(map,"LvlBlo13");
	if is_undefined(block6) {block6=0;}
	block7= ds_map_find_value(map,"LvlBlo14");
	if is_undefined(block7) {block7=0;} 
}

// Disable blocks if true
global.noadsatm=true;
if (global.noadsatm==true)
{
	block1=1;
	block2=1;
	block3=1;
	block4=1;
	block5=1;
	block6=1;
	block7=1;
}


for (var i=1; i<33;i++) // i<x x peab olema ruumide arv + 1 . Not to forget et esimene room0 mitte room1
{
	with(instance_create_layer(-100,-100,"Instances",oLevel))	
	{
		image_xscale=levelButtonScale;
		image_yscale=levelButtonScale;
		picscale=picScale;
		slotY=	(36*levelButtonScale)+self.y;
		slotX=	(12*levelButtonScale)+self.x;
		slotX2=	(20*levelButtonScale)+self.x;
		image_alpha=1;
		levelnr=i+((other.chapter-1)*32);
		alarm[0]=2;
	}
}

with(instance_create_layer(-100,-100,"Instances",oLevel))
{
	image_xscale=levelButtonScale;
	image_yscale=levelButtonScale;
	picscale=picScale;
	slotY=	(36*levelButtonScale)+self.y;
	slotX=	(12*levelButtonScale)+self.x;
	slotX2=	(20*levelButtonScale)+self.x;
	image_alpha=1;
	levelnr=999;
	alarm[0]=2;
}