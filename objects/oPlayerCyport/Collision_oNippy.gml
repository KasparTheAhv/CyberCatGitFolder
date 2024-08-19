with (other)
{
instance_destroy();
}

play_sound(snCatnipCount,false);
if instance_exists(oGUIBAR)
{
	
	oGUIBAR.cn+=25;
	if instance_exists(oPlayer){target=oPlayer;}
	if instance_exists(oPlayerFall){target=oPlayerFall;}
	if instance_exists(oPlayerAttack){target=oPlayerAttack;}
if (oGUIBAR.cn>=150)
{
self.immune=true;
instance_create_layer(target.x,target.y,"Particles",oLightning);
}	
}