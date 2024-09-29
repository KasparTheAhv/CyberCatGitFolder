vsp+=grv;
vsp=clamp(vsp,-10,8);
if (lubaliikumine)
{
if (sign(hsp) !=0) {sprite_index=global.sPlayerR; image_speed=1;image_xscale = sign(hsp)*global.catskinscale;} else {sprite_index=global.sPlayer; image_speed=0;}
}
if (lubaalpha)
{
	
if (alpha<1) 
{
	alpha+=0.01;
	alpha2+=0.01;
	oVStick.alpha=oPlayerFake.alpha;
	alarm[2]=1;
} else {
	lubaalpha=false;
	alarm[3]=120;
	alpha=1;
	oVStick.alpha=oPlayerFake.alpha;
	}
}
textalpha="[alpha,"+string(alpha2)+"]";

if (lubaalpha2)
{
	
	
if (alpha2>0)
{
alpha2-=0.02;	

} else {instance_destroy(); }

}


x += floor(hsp);


