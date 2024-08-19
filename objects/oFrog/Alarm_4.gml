if (image_xscale<5) {var lay="Dog";} else {var lay="Characters";}

cap=16*image_xscale;

if instance_exists(oPlayerGod) {xx=oPlayerGod.x;yy=oPlayerGod.y;} else {alarm[0]=5;exit;}
var dist=point_distance(self.x,self.y-cap,xx,yy)*1.5;

if (vsp<1.1)
{
image_index=2;
attacking=true;
with (instance_create_layer(x,y-cap,"Dog",oFrogTon))
{
spd=other.image_xscale*2*16;
maxDist=dist;
image_xscale=other.image_xscale*2;
image_yscale=other.image_yscale*2;
tonqScale=2*other.image_xscale*2;
depth=other.depth-5;
dir=other.dir;	
owner=other.id;
other.mytonq=self.id;
}
} else {alarm[0]=5;}