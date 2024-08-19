// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NextLevel(){


// regular
var room_name = room_get_name(room);
var room_nr_str = string_delete(room_name,1,4);
var room_nr_real = real(room_nr_str);
var added_one = room_nr_real+1;
var new_string = "Room"+string(added_one);
var idealtarget = asset_get_index(new_string);

var map= ds_map_secure_load("settings.sav");
var block1= ds_map_find_value(map,"LvlBlo1");
if is_undefined(block1) {block1=0;} 
var block2= ds_map_find_value(map,"LvlBlo2");
if is_undefined(block2) {block2=0;}
var block3= ds_map_find_value(map,"LvlBlo3");
if is_undefined(block3) {block3=0;}
var block4= ds_map_find_value(map,"LvlBlo4");
if is_undefined(block4) {block4=0;} 
var block5= ds_map_find_value(map,"LvlBlo5");
if is_undefined(block5) {block5=0;}
var block6= ds_map_find_value(map,"LvlBlo6");
if is_undefined(block6) {block6=0;}
var block7= ds_map_find_value(map,"LvlBlo7");
if is_undefined(block7) {block7=0;} 
if (global.admin) or (global.noadsatm) {
	block1=1;
	block2=1;
	block3=1;
	block4=1;
	block5=1;
	block6=1;
	block7=1;
}



// Special ones for adblocks
if (room==Room3)  {if (block1==1) {idealtarget=Room4;} else	 {idealtarget=RoomMenu;} }
if (room==Room7)  {if (block2==1) {idealtarget=Room8;} else	 {idealtarget=RoomMenu;} }
if (room==Room11) {if (block3==1) {idealtarget=Room12;} else {idealtarget=RoomMenu;} }
if (room==Room15) {if (block4==1) {idealtarget=Room16;} else {idealtarget=RoomMenu;} }
if (room==Room19) {if (block5==1) {idealtarget=Room20;} else {idealtarget=RoomMenu;} }
if (room==Room23) {if (block6==1) {idealtarget=Room24;} else {idealtarget=RoomMenu;} }
if (room==Room27) {if (block7==1) {idealtarget=Room28;} else {idealtarget=RoomMenu;} }

// Windows level 15 is max
if (os_type!=os_android)
{
	if (room==Room15)
	{
		idealtarget=RoomCredits;
	}
}
// last level into credits
if (room==Room31) {var idealtarget=RoomCredits;}

// Transfer results
with (oTransition) {target=idealtarget;}

}