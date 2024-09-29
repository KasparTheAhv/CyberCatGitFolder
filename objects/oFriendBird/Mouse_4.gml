/// @description Insert description here
// You can write your code in this editor
if (ending) {
if (delay<=0) {
		delay=6;alarm[1]=1;
	
			oGUIBAR.task1="+ Task done!";
			oGUIBAR.task1col="[#4CFF4C]";
			text="Thank you so much! You are my bestie now.\nBut I don't hang out with my friends a lot.\nSo yeah, start moving!";
			with (instance_create_layer(self.x,self.y-30,"Particles",oTextFloat))
			{
			whasound=501;
			extraheight=30;
			timer=300;
			target=other;
			text = other.text;
			length = string_length(text);
			}		
	UnlockNoteEgg("Egg",2);
} 


} else { //before ending

if (delay<=0) {
		delay=6;alarm[1]=1;
		if !(bosskilled)
		{
			oGUIBAR.task1="- Help bird";
			oGUIBAR.task1col="[#FFFFFF]";
			text="Please help me get back home.\nThose birds are being bullies\nand wont let me pass.\nI'll wait here until they are gone!";
			with (instance_create_layer(self.x,self.y-30,"Particles",oTextFloat))
			{
				whasound=501;
			extraheight=30;
			timer=200;
			target=other;
			text = other.text;
			length = string_length(text);
			}
		} else {
			activated=true;
			oGUIBAR.task1="- Escort bird";
			oGUIBAR.task1col="[#FFFFFF]";
			text="Birb is very grateful for eliminating those jerks\nCould you escort birb back to\nhome on the left side of the jungle?";
			with (instance_create_layer(self.x,self.y-30,"Particles",oTextFloat))
			{
								whasound=501;
			extraheight=30;
			timer=200;
			target=other;
			text = other.text;
			length = string_length(text);
			}
			
		}
} 

}