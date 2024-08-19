/// @description Insert description here
// You can write your code in this editor
	with (instance_create_layer(x,y,"Particles",oBulletDart))
	{		
		image_xscale=1.5;
		image_yscale=1.5;
		alarm[0]=200;
		speed=20;
		if (other.side==1) {image_angle=0;direction=0;} 
		else {image_angle=180;direction=180;}	
	}