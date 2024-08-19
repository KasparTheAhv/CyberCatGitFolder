/// @description Insert description here
// You can write your code in this editor




// KawaiCat only

if (sprite_index==s11PlayerGod)
{
	var rightSide=choose(false,true);
	if (rightSide) 
	{
		with (instance_create_layer(room_width,irandom_range(0,room_height),"Characters",oNyanLightning))
		{
			hsp=-6;
			image_xscale=-2;
			image_yscale=2;
		}
	} else {
		with (instance_create_layer(0,irandom_range(0,room_height),"Characters",oNyanLightning))
		{
			hsp=6;
			image_xscale=2;
			image_yscale=2;
		}
	}
	
	alarm[4]=irandom_range(30,90);
	exit;
}


// Basic lightning dynamic
if (global.lightningMode==1)
{
instance_create_layer(self.x+irandom_range(-800,800),0,"Characters",obj_lightning);
alarm[4]=irandom_range(30,90);
exit;
} 


// basic lightning white
if (global.lightningMode==0)
{
with (instance_create_layer(self.x+irandom_range(-800,800),0,"Particles",obj_lightning))
{
	colorLight=c_white;
}
alarm[4]=irandom_range(30,90);
exit;
} 