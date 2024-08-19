/// @desc
var tile = tilemap_get_at_pixel(tilemap,x,y);

if (tile!=1)
{
self.y+=20;	
} else {


/// @desc
with (instance_create_layer(x,y+48,"BefEdge",oVine))
{
image_angle=0;
vinesegnr=1;	
}

instance_destroy(self);
}