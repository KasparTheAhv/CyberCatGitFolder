/// @desc


if (instance_number(oTurd)<20)
{
		
		play_sound(snBanana,false);
		with (instance_create_layer(x,y,"Characters",oTurd))
		{
		hsp=3;
		vsp=-5;
		alarm[0]=60;
		}
		
		var chance = irandom_range(0,100);
		if (chance>70)  {alarm[3]=10;}
}

alarm[0]=irandom_range(20,280);