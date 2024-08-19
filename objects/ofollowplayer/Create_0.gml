/// @description Insert description here
// You can write your code in this editor
shake_remain=0;
shake_length=0;
shake_magnitude=0;
allowedcam=false;

if instance_exists(oPlayer)
{
target=oPlayer;
} else {target=noone;}
if (target==noone)
{
if instance_exists(oPlayerFake)
{
target=oPlayerFake;
}

}
extraheight=0;
// list for cave maps
cavemap=false;
if (room==Room13) {cavemap=true;}
if (room==Room14) {cavemap=true;}
if (room==Room17) {cavemap=true;}
if (room==Room23) {cavemap=true;}
if (room==Room24) {cavemap=true;}
if (room==Room25) {cavemap=true;}
if (room==Room26) {cavemap=true;}
if (room==Room27) {cavemap=true;}
if (room==Room29) {cavemap=true;}
if (room==Room31) {cavemap=true;}
if (cavemap==true)
{
	//Fake Layer
global.fakeTileAlpha=1;
if (layer_exists(layer_get_id("CaveFront")))
{
global.layFake[0] = layer_get_id("CaveFront");
global.mapFake[0] = layer_tilemap_get_id(global.layFake[0]);
global.uFakeTileAlpha = shader_get_uniform(shTransparentTiles,"alpha");
layer_script_begin(global.layFake[0], FakeTileAlphaSet);
layer_script_end (global.layFake[0], FakeTileAlphaReset);
}
	
if (layer_exists(layer_get_id("HouseFront")))
{
global.layFake[0] = layer_get_id("HouseFront");
global.mapFake[0] = layer_tilemap_get_id(global.layFake[0]);
global.uFakeTileAlpha = shader_get_uniform(shTransparentTiles,"alpha");
layer_script_begin(global.layFake[0], FakeTileAlphaSet);
layer_script_end (global.layFake[0], FakeTileAlphaReset);
}	
	
	
	

}