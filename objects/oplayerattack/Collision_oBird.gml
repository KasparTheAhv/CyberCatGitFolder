show_debug_message("creating obirdfall");
with (instance_create_layer(other.x,other.y+25,"Characters",oBirdFall))
{
vsp= 2;
hsp= irandom_range(-2,2);
}
instance_destroy(other);

var plax= sign(image_xscale)*0.75*16;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);