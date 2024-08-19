/// @desc
	if !(doorOpen)
	{

	if (image_index<4) {image_index+=1; alarm[0]=2; } else {
		
		
				alarm[0]=120; doorOpen=true; animating=false;
				text="ARE YOU NUTS? \n CLOSE THE DOOR JESSE!";
				follow = instance_nearest(x,y,oCaravan);
				with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}	

		alarm[0]=120; doorOpen=true; animating=false;}

	} else {
		
	if (image_index>0) {image_index-=1; alarm[0]=2; } else {doorOpen=false; animating=false;}
		
	}