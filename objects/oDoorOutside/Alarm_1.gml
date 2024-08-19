/// @description Insert description here
var lay_id = layer_get_id("Collision");
var map_id = layer_tilemap_get_id(lay_id);


var thismuch= round(image_yscale*4);
if (image_yscale<0.6) {var thismuch= round(image_yscale*5); }


for (var i = 0; i < thismuch ;i++)
{
        var data = tilemap_get_at_pixel(map_id, x, y-10-(31*i));
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data)
            tilemap_set_at_pixel(map_id, data, x, y-10-(31*i));
        }
}

var lay_id = layer_get_id("CollisionSmall");
var map_id = layer_tilemap_get_id(lay_id);

var thismuch= round(image_yscale*15);
for (var i = 0; i < thismuch ;i++)
{
        var data = tilemap_get_at_pixel(map_id, x, y-10-(8*i));
        if !tile_get_empty(data)
        {
            data = tile_set_empty(data)
            tilemap_set_at_pixel(map_id, data, x, y-10-(8*i));
        }
}