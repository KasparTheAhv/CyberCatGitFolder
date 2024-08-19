/// @desc urn lid

if (vsp<0) {vsp+=0.15;alarm[0]=1;
	
	image_angle+=2;
	xx+=vsp*1.2;
	yy+=vsp;
	} else {vsp=0; 	alarm[2]=1;	text="Operation Urn activated.\neliminating should be extinct animals ";
		follow = instance_nearest(x,y,oUrn);
		with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
			{
			cancelendchanges=true;
			target=other.follow;
			text = other.text;
			length = string_length(text); 
			who=other.id;
			}
		}
vsp=clamp(vsp,-6,0);