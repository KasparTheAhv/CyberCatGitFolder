///@desc make the train move
var gridX=88;
var gridY=18;
var lay_id= layer_get_id("MajadRongiTaga");
var map_id=layer_tilemap_get_id(lay_id);

tilemap_set(map_id,1536,gridX,gridY)
alarm[4]=120;
current_state=train2states.move;


