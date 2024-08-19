/// @description Insert description here
// You can write your code in this editor
// +6w -19h sword
tilemap = layer_tilemap_get_id("RatCollision");
tilemap2 = layer_tilemap_get_id("Collision");
tilemap3 = layer_tilemap_get_id("Platform");
enum gatosta
{
	stand,
	fly,
	shoot,
}
cur_state=gatosta.stand;
swodir=0;
sword_yscale=1;
swolock=false;
dir=0;
whatrat=noone;
maxelud=4;
elud=4;
catnip=0;