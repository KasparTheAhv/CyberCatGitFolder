texterscale=oGUIBAR.zoomLevel*0.5;
textscale="[scale,"+string(texterscale*0.65)+"]";
letters+=spd;
text_current = string_copy(text,1,floor(letters));
h = string_height_scribble(text_current)*texterscale*0.65;
w = string_width_scribble(text_current)*texterscale*0.72;



// destroy when done
if(letters >= length)
{
	if (onetimer)
	{
	onetimer=false;
	alarm[1]=10;
	}
}

// relocate textbox if out of X bound
if (self.x<250) {self.x+=10;target=noone;exit;}
if (self.x>rW-250) {self.x-=10;target=noone;exit;}

// Stay on target, unless it = noone
if (target!=noone)
{
	if instance_exists(target)
	{
	self.x=target.x;
	self.y=target.y-extraheight;
	}
}