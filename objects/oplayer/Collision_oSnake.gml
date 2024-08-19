if !(immune)
{
	var exiter=true;
	var myside=sign(image_xscale);
	with (other)
	{
	var hisside=sign(image_xscale);
	var scale=image_xscale;
	if (attack) {if (image_index>=4) {var exiter=false;}} else {sprite_index=sSnakeMove;image_speed=1;alarm[0]=100;}
	if (myside!=hisside) {var exiter=false;}
	}
	
	
	if (exiter) {exit;}
	play_sound(snSlash,false);	
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*(-1);
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}