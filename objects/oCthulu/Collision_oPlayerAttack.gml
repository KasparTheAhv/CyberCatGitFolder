if !(shielded)
{
	if !(hurt)
	{
	hurt=true;
	self.image_blend=c_red;
	alarm[8]=4;	
	oGUIBAR.hp+=10;
	oGUIBAR.cn+=25;
	elud-=5;
	alarm[1]=1;
	alarm[0]=-1;
	alarm[2]=-1;
	var plax= other.side*12;
	instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
	} 
} else {
	with(other)
	{
		self.image_blend=c_orange;
		alarm[8]=30;	
		play_sound(snOuch,false);		
		var scale=choose(1,-1);
		with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
		{
		superplatform=other.superplatform;
		hsp= 2*scale;
		vsp= -3;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
		}
		instance_destroy(oPlayerAttack);
	}
}