/// @desc
// a small vga cable identifying as display port cable and discussing it with 
// his hairy plants imaginary friends 

if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<120)
{

	if !(instance_exists(oTextFloat))
	{
		if (textnr<5) {textnr+=1;
			if (textnr==1) {text=text1;}
			if (textnr==2) {text=text2;}
			if (textnr==3) {text=text3;}
			if (textnr==4) {text=text4;}
			if (textnr==5) {text=text5;}
				
				with (instance_create_layer(self.x,self.y-30,"Particles",oTextFloat))
				{
				extraheight=30;	
				timer=180;
				target=other;
				text = other.text;
				length = string_length(text);
				}	
				
			
			
			alarm[0]=70;
			
			} else {exit;}
		
		
	
	} else {alarm[0]=70;}



} else {
	
alarm[0]=70;	
}