letters+=spd;
text_current = string_copy(text,1,floor(letters));
if (fade) {
if (image_alpha>0) {image_alpha-=0.02;} else {instance_destroy();}
}
draw_set_font(fOrbitronNote);
if (h == 0) h = string_height(text)*0.5;
w = string_width(text_current)*0.5;

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


