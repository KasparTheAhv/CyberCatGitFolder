enum states
{
	stay,
	wander,
	shoot,
	escape,
}
humanhater=false;
tilemap = layer_tilemap_get_id("TreeNew");
shootdelay=6;
wanderlock=120;
whatbase=noone;
shots=0;
dire=irandom_range(0,359);
current_state=states.stay;
shootrange=230;
escaperange=round(shootrange*0.6);
movespeed=2;
speedmod=1;
elud=3;
timermod=1;
xrandom=irandom_range(-20,20);
yrandom=irandom_range(-20,20);
depth=depth+10;
alarm[0]=5;