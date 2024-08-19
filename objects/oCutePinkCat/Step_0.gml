/// @desc


if instance_exists(oFollowPlayer) {who=oFollowPlayer;}
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}


if (who.x<self.x) {
	
	
	
		if (image_xscale!=-0.75)
		{
		image_xscale=-0.75;
		tailx=self.x-(13*0.75);
		eyesindex=1; alarm[0]=200;
		}
	
	} else {
	
	if (image_xscale!=0.75)
		{
	image_xscale=0.75;
	tailx=self.x+(13*0.75);
		eyesindex=1; alarm[0]=200;
		}
}