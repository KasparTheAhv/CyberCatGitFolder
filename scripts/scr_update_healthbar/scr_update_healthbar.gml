// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_healthbar()
{
if show_hp<red_hp
{
	red_hp-=(max_hp/400);
}

if hp!=show_hp
{
	show_hp+=(hp-show_hp)*0.1;
}

if show_hp>=red_hp
{
	red_hp=show_hp-0.2;
}

if hp>max_hp
{
	hp=max_hp;
}


index+=0.5;

hp=clamp(hp,0,90);
}