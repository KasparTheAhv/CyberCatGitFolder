/// @desc
var gridX=88;
var gridY=18;
var lay_id= layer_get_id("MajadRongiTaga");
var map_id=layer_tilemap_get_id(lay_id);
tilemap_set(map_id,prevtiledata,gridX,gridY);