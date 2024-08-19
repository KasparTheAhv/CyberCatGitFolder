/// @desc
if (activated)
{
	 if !(fadeaway) && (image_alpha<0.6) {image_alpha+=0.1}
	var who = noone;
	if instance_exists(oPlayer) {who=oPlayer;}
	if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
	if (who!=noone)
	{
		if !(fadeaway)
		{
			self.x=who.x;
			self.y=who.y;
		}
	} else {fadeaway=true;shielded=false;}	
if (fadeaway)
	{
	image_speed=2;
	}
}