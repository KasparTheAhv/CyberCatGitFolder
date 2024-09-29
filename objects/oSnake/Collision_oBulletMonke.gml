/// @desc
if (showntext==true) {exit;}

if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<100)
{
	self.nonippy=false;
	with (instance_create_layer(self.x,self.y,"Characters",oSnakeDeath))
	{
		image_xscale=1*sign(other.image_xscale);
		image_yscale=1;
	}
	play_sound(snShot,false);
	instance_destroy(self);
	with (oSnake) {showntext=true;}
	oSnake.showntext=true;
	text="U saved me, why? MONKE?";
	with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=140;
	}
	UnlockNoteEgg("Egg",1);
}