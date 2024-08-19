///@desc make the train leave
var gridX=184;
var gridY=17;
var lay_id= layer_get_id("Rongitaga");
var map_id=layer_tilemap_get_id(lay_id);
tilemap_set(map_id,1536,gridX,gridY)
alarm[3]=10;

