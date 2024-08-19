/// @desc Kui jumalaks VISUAL UPDATE
// You can write your code in this editor
	if instance_exists(oGUIBAR){oGUIBAR.varvi=true;}
	
if layer_exists("Science")
{	
	var lay_id = layer_get_id("Science");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileScienceGod)
	{
	    tilemap_tileset(tile_id, TileScienceGod);
	}
}
if layer_exists("Science2")
{
	var lay_id = layer_get_id("Science2");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileScienceGod)
	{
	    tilemap_tileset(tile_id, TileScienceGod);
	}
}
if layer_exists("ScienceBack")
{
	var lay_id = layer_get_id("ScienceBack");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileScienceGod)
	{
	    tilemap_tileset(tile_id, TileScienceGod);
	}
}
if layer_exists("ScienceFront")
{
	var lay_id = layer_get_id("ScienceFront");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileScienceGod)
	{
	    tilemap_tileset(tile_id, TileScienceGod);
	}
}
	//
if layer_exists("Furniture")
{
	var lay_id = layer_get_id("Furniture");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileFurniGod)
	{
	    tilemap_tileset(tile_id, TileFurniGod);
	}
}
if layer_exists("Furniture2")
{
	var lay_id = layer_get_id("Furniture2");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileFurniGod)
	{
	    tilemap_tileset(tile_id, TileFurniGod);
	}
}
	//
if layer_exists("RoomOutline")
{
	var lay_id = layer_get_id("RoomOutline");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileFurniGod)
	{
	    tilemap_tileset(tile_id, TileFurniGod);
	}
}
	//
if layer_exists("RoomFront")
{
	var lay_id = layer_get_id("RoomFront");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileFurniGod)
	{
	    tilemap_tileset(tile_id, TileFurniGod);
	}
}
	//
if layer_exists("GrassOutline")
{
	var lay_id = layer_get_id("GrassOutline");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileNatureGod)
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("CaveFront")
{
	var lay_id = layer_get_id("CaveFront");
	var tile_id = layer_tilemap_get_id(lay_id);
	if tilemap_get_tileset(tile_id) != TileNatureGod
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("CaveBack")
{
	var lay_id = layer_get_id("CaveBack");
	var tile_id = layer_tilemap_get_id(lay_id);
	if tilemap_get_tileset(tile_id) != TileNatureGod
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("RockBack")
{
	var lay_id = layer_get_id("RockBack");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileNatureGod)
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("TreeNew") && (room!=Room16)
{
	var lay_id = layer_get_id("TreeNew");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileTreeGod)
	{
	    tilemap_tileset(tile_id, TileTreeGod);
	}
} else { 
	var lay_id = layer_get_id("TreeNew");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileNatureGod)
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
	
	}
if layer_exists("GrassBack")
{
	var lay_id = layer_get_id("GrassBack");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileNatureGod)
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("Roads")
{
	var lay_id = layer_get_id("Roads");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileNatureGod)
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("GrassFront")
{
	var lay_id = layer_get_id("GrassFront");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileNatureGod)
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("BridgeFront")
{
	var lay_id = layer_get_id("BridgeFront");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileNatureGod)
	{
	    tilemap_tileset(tile_id, TileNatureGod);
	}
}
if layer_exists("KappAknadLau")
{
	var lay_id = layer_get_id("KappAknadLaud");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileFurniGod)
	{
	    tilemap_tileset(tile_id, TileFurniGod);
	}
}

if layer_exists("TreppPesaVanni")
{
	var lay_id = layer_get_id("TreppPesaVanni");
	var tile_id = layer_tilemap_get_id(lay_id);
	if (tilemap_get_tileset(tile_id) != TileFurniGod)
	{
	    tilemap_tileset(tile_id, TileFurniGod);
	}
}

if layer_exists("Leaves") && (global.GFX3==1)
{
layFX = layer_get_fx("Leaves");
prevspr = fx_get_parameter(layFX,"param_sprite");
fx_set_parameter(layFX,"param_sprite",sRedRain);
}

if instance_exists(oCellarDoorF) {oCellarDoorF.image_index=1;}
if instance_exists(oCellarDoor) {oCellarDoor.sprite_index=sCellarDoorGod;}
if instance_exists(oSquirrBase) {oSquirrBase.image_index=1;}
if instance_exists(oBirdBase) {oBirdBase.image_index=1;}
if instance_exists(oSquir) {oSquir.shootrange=230*3;oSquir.speedmod=1.5;oSquir.timermod=0.75;}
if instance_exists(oBird) {oBird.speedmod=2;oBird.alarm[4]=10;}
if instance_exists(oBirdPathless) {oBirdPathless.speedmod=3;oBirdPathless.alarm[5]=10;}
