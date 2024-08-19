/// @description Insert description here
// You can write your code in this editor
grv=choose(0.1,0.2,0.3);
hsp=0;
vsp=0;
minspd=choose(-4,-3,-2);
tilemap= layer_tilemap_get_id("Collision");
vsprandom=random_range(3,6);
maxalter=choose(1,2);
alter=0;
alterup=true;
alterspd=choose(0.02,0.05,0.1);
alarm[0]=60;