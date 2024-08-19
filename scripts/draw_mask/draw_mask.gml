// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_mask(){
	draw_text(x,y-20,"x/y: "+string(x)+"/"+string(y));
draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_lime,c_lime,c_lime,c_lime,true);
}