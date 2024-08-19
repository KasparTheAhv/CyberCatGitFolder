var temax=other.x;
var temay=other.y;


if (other.colorChange==2) 
{
var givenippy=true;	
} else { var givenippy=false;}

with (instance_create_layer(temax,temay,other.layer,oButterflyD))
{
	nippy=givenippy;
	image_blend=other.image_blend;
}
instance_destroy(other);
var plax= sign(image_xscale)*0.75*16;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);




