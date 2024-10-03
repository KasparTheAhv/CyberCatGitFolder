instance_destroy(oGun);
oFollowPlayer.allowedcam=false;
oGUIBAR.alcam=false; 
with(oJumpKey) {joonista=true;}
instance_destroy(oShield);
with(oEgg) {instance_destroy();}
if instance_exists(oMusicController)
{
oMusicController.alarm[2]=1;	
}
with (oCoinShield)
{
kustu=true;
}

with (oPigMono)
{
	curdir=0;
	pulsate=false;
	alarm[1]=-1;
}
with (oBat)
	{
		if (self.activated)
		{
			with (instance_create_layer(self.x,self.y-3,"Characters",oBatD))
			{
			nonippy=true;
			vsp= 0;
			hsp= irandom_range(-3,3);
			}
			instance_destroy();		
		}
	}


if instance_exists(oBirdBoss)
{
	with(oBirdBoss)
	{
	hspeed=0;vspeed=0;speed=3;	
	xMod=irandom_range(-40,40);
	yMod=irandom_range(0,20);
	state=birdstate.fly;
	}
}



with (oElGato)
{
catnip=0;
oElGato.image_blend=c_white;
}
var lay_id= layer_get_id("Backgrounds");
layer_hspeed(lay_id,-0.25);
var lay_id= layer_get_id("Backgrounds2");
layer_hspeed(lay_id,-0.04);
var lay_id= layer_get_id("Backgrounds3");
layer_hspeed(lay_id,-0.04);
with(oFollowPlayer) {allowedcam=false;}

if (room==Room6)
{
var lay_id= layer_get_id("Backgrounds");
layer_hspeed(lay_id,-7);
var lay_id= layer_get_id("Backgrounds2");
layer_hspeed(lay_id,-0.17);	
}
instance_create_layer(x,y,"Particles",oGodFade);

if layer_exists("Leaves") && (global.GFX3==1)
{
	if layer_get_visible("Leaves") 
	{
	fx_set_parameter(layFX,"param_sprite",prevspr);
	}
}
var lay_id = layer_get_id("Roads");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("Houses");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileHouses
{
    tilemap_tileset(tile_id, TileHouses);
}
var lay_id = layer_get_id("Furniture");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileFurni
{
    tilemap_tileset(tile_id, TileFurni);
}
var lay_id = layer_get_id("Furniture2");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileFurni
{
    tilemap_tileset(tile_id, TileFurni);
}
var lay_id = layer_get_id("GrassOutline");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("RockBack");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("TreeNew");
var tile_id = layer_tilemap_get_id(lay_id);


if (room!=Room16)
{
	if tilemap_get_tileset(tile_id) != TileTree
	{
	    tilemap_tileset(tile_id, TileTree);
	}
} else {
	if tilemap_get_tileset(tile_id) != TileNature
	{
	    tilemap_tileset(tile_id, TileNature);
	}
	
}


var lay_id = layer_get_id("RoomOutline");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileFurni)
{
    tilemap_tileset(tile_id, TileFurni);
}
//
var lay_id = layer_get_id("RoomFront");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileFurni)
{
    tilemap_tileset(tile_id, TileFurni);
}
var lay_id = layer_get_id("GrassBack");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("GrassFront");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("BridgeFront");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("CaveFront");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("CaveBack");
var tile_id = layer_tilemap_get_id(lay_id);
if tilemap_get_tileset(tile_id) != TileNature
{
    tilemap_tileset(tile_id, TileNature);
}
var lay_id = layer_get_id("KappAknadLaud");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileFurni)
{
    tilemap_tileset(tile_id, TileFurni);
}
var lay_id = layer_get_id("TreppPesaVanni");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileFurni)
{
    tilemap_tileset(tile_id, TileFurni);
}
var lay_id = layer_get_id("Science");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileScience)
{
    tilemap_tileset(tile_id, TileScience);
}
var lay_id = layer_get_id("Science2");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileScience)
{
    tilemap_tileset(tile_id, TileScience);
}
var lay_id = layer_get_id("ScienceBack");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileScience)
{
    tilemap_tileset(tile_id, TileScience);
}
var lay_id = layer_get_id("ScienceFront");
var tile_id = layer_tilemap_get_id(lay_id);
if (tilemap_get_tileset(tile_id) != TileScience)
{
    tilemap_tileset(tile_id, TileScience);
}

audio_stop_sound(snGodMusic);
if instance_exists(oCellarDoorF) {oCellarDoorF.image_index=0;}
if instance_exists(oCellarDoor) {oCellarDoor.sprite_index=sCellarDoor;}
if instance_exists(oSquirrBase) {oSquirrBase.image_index=0;}
if instance_exists(oBirdBase) {oBirdBase.image_index=0;}
if instance_exists(oBird) {oBird.speedmod=1;oBird.alarm[1]=-1; }
if instance_exists(oSquir) {oSquir.shootrange=230;oSquir.timermod=0.75;oSquir.speedmod=1;}
if instance_exists(oGUIBAR) {oGUIBAR.oGodZoom=false;oGUIBAR.varvi=false;}
if instance_exists(oPause) {oPause.alarm[5]=130;}
if instance_exists(oBook) {oBook.alarm[5]=1;oBook.alarm[4]=130;}
if instance_exists(oMagnify) {oMagnify.alarm[4]=130;}
