/// @desc
if !(instance_exists(oPlayer)) {exit;}
if (point_distance(x,y,oPlayer.x,oPlayer.y)>70) {exit;}


oOnion.picked+=1;
play_sound(snCatnipCount,false);



if (self.picked>=4) && (summoned==false)
{
	if (room==Room18)
	{
	oOnion.summoned=true;
	instance_create_layer(1500,750,"Dog",oAngel);
	var whatevent = instance_nearest(x,y,oEvent);
	whatevent.activated=true;
	}
}

if instance_exists(oGUIBAR)
{
	oGUIBAR.hp-=10;
	if (oGUIBAR.hp<=0) && (room==Room18)
	{
	UnlockNoteEgg("Egg",2);
		
		with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
		{
		hsp= 0;
		vsp= -1;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
		}
		instance_destroy(oPlayer);
	}
}
	
	
	
	

instance_destroy();