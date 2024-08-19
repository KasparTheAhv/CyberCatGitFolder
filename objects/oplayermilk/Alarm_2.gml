if (animate==true) {animate=false;}

if (sign(image_xscale)==1)
{
if (dir>280)
{
dir-=13;
alarm[2]=1;
} else {
instance_destroy();
with (instance_create_layer(x,y,"Characters",oPlayer))
{
image_xscale=other.image_xscale;	
	
}
}
}
else 
{
if (dir<440)
{
dir+=13;
alarm[2]=1;
} else {


with (instance_create_layer(x,y,"Characters",oPlayer))
{
image_xscale=other.image_xscale;	
}


instance_destroy();
}	
}


