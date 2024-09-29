if (colevent_id==0) {exit;}

if (colevent_id==2) && !(blocker)
{	
	UnlockNoteEgg("Egg",1);
	blocker=true;
	text="No no no.. can't claw\nthis one down.\nYou must shoot it!";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-50,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	}
		instance_destroy();
}

if (room==Room21) {exit;}
var xx=oPlayerAttack.x;
var yy=oPlayerAttack.y;
instance_destroy(oPlayerAttack);
with (instance_create_layer(xx,yy,"Characters",oPlayer))
{
	landed=false;
}