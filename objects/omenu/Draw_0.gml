
draw_sprite_ext(sWhite,0,menu_x-(gui_margin*2),0,back_scale,back_scale,0,c_black,0.5);
draw_line_color(menu_x-(gui_margin*2),0,menu_x-(gui_margin*2),gui_height,c_white,c_white);
draw_sprite_ext(sCloud,0,menu_x-(gui_margin*0.5), menu_y - (menu_itemheight * (3.4*1.75)),0.3,0.3,image_angle,clocolor,alpha);


if (global.specialGreeting)
{
scribble(textwholegreeting+"PiratCat").draw(menu_x-(gui_margin*0.5), menu_y - (menu_itemheight * (5*1.75)));
} else {
scribble(textwholegreeting+"CyberCat").draw(menu_x-(gui_margin*0.5), menu_y - (menu_itemheight * (5*1.75)));
}

for (var i = 0; i < menu_items; i++)
{
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("",txt,0);
		if (colorlock) {color = "[#FFFFFF]";}
	}
	else
	{
		if (global.loading<2) {color="[#636363]";} else {color="[#B2B2B2]";}	
	}
	var yy = menu_y - (menu_itemheight * (i*1.75));
	scribble(textwhole2+string(txt)).draw(menu_x-(gui_margin*0.5),yy);
}
