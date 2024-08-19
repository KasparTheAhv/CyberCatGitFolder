/// @desc How to attack
if (treatment) {alarm[10]=10;exit;}


if (allowedtoatk)
{
if !(instance_exists(oText))
{
if (canatk) && (anger>=300)
{
canatk=false;
with (instance_create_layer(x,y-2,"Characters",oDogAttack))
{
startx=other.x;
starty=other.y;
foreverchase=other.foreverchase;
landed=false;
jumping=true;
// movement
if (other.sprite_index==sDogR)
{
	hsp=other.hsp;
	vsp=-7;
}
if (other.sprite_index==sDogA) 
{
	vsp=other.vsp-1;
	hsp=other.hsp;
}
chase=other.chase;
walksp=other.walksp;
prevhsp=other.hsp;
elud=other.elud;
image_xscale=other.image_xscale;
}
instance_destroy();
exit;
} 
}
}
if (chase) {alarm[10]=10;}