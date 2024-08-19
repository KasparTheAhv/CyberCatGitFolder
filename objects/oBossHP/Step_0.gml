if instance_exists(myboss)
{
if (myboss.object_index==oElGato) {bossindex=0;}
	with (myboss)
	{
	other.mobElud=self.elud;
	other.maxElud=self.maxelud;
	if (other.cnbarOn) {other.catNip=self.catnip;}
	other.image_index=self.maxelud-2;
	}
catNip=clamp(catNip,0,3);
if (image_alpha<1)	{image_alpha+=0.02;}
	
rx1=x+(55*image_xscale);
ry1=y-(13*image_yscale);
var hpratio=mobElud/maxElud;
rx2=x+((55+(107*hpratio))*image_xscale);
ry2=y+(13*image_yscale);
} else {
if (image_alpha>0){mobElud=0;image_alpha-=0.02;} else {instance_destroy(self);}
}

