if (self.y<other.y)
{ // damage player
	play_sound(snOuch,false);	
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp= 2*choose(1,-1);
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayerAttack);
}
else 
{  // kill hel
	instance_create_layer(other.x,other.y,"Characters",oHeliLizardD);
	instance_destroy(other);
	var settingsmap = ds_map_secure_load("settings.sav")
var plax= side*12;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
}
