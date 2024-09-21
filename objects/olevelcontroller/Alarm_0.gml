///@desc reload
var map = ds_map_secure_load("settings.sav");
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
if (os_type==os_windows) or (global.noadsatm)
{
	block1=1;
	block2=1;
	block3=1;
	block4=1;
	block5=1;
	block6=1;
	block7=1;
}