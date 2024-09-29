if instance_exists(oGUIBAR)
{
	texterscale=oGUIBAR.zoomLevel*0.5;
}
textscale="[scale,"+string(texterscale*0.65)+"]";
letters+=spd;
text_current = string_copy(text,1,floor(letters));
h = string_height_scribble(text_current)*texterscale*0.65;
w = string_width_scribble(text_current)*texterscale*0.72;

if (fade) { if (image_alpha>0) {image_alpha-=0.02;} else {instance_destroy();}}

// destroy when done
if(letters >= length)
{
	if (onetimer)
	{
	onetimer=false;
	alarm[1]=timer;
	}
}
// relocate textbox if out of X bound
if (self.x<250)
{
self.x+=10;target=noone;exit;
}
if (self.x>rW-250)
{
self.x-=10;target=noone;exit;
}
/// @desc PROG DEST
if (target!=noone)
{
	if instance_exists(target)
	{
	self.x=target.x;
	self.y=target.y-(extraheight);
	}
}


