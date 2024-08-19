/// @desc
image_speed=1;
eyesindex=0;
image_yscale=0.75;
if instance_exists(oFollowPlayer) {who=oFollowPlayer;}
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}

taily=y-4;

if (who.x<self.x) {
	
	
	
		if (image_xscale!=-0.75)
		{
		image_xscale=-0.75;
		tailx=self.x-(13*0.75);
		eyesindex=1; alarm[0]=220;
		}
	
	} else {
	
	if (image_xscale!=0.75)
		{
	image_xscale=0.75;
	tailx=self.x+(13*0.75);
	
		eyesindex=1; alarm[0]=220;
		}
	
	
	}