/// @desc 
if !(global.camLooking)
{
oFollowPlayer.target=oPlayerFall;
}
superplatform=false;
alarmer=false;
hsp=0;
vsp=0;
image_blend=c_red;
catskinscale=global.catskinscale;
image_yscale=0.75;
image_speed=0;
grv=0.2;
ScreenShake(6,30);
bounced=false;
collision=false;
tilemap = layer_tilemap_get_id("Collision");
// check if spawned inside a block // push downwards
show_debug_message("starting check for oPlayerFall if stuck");


if (tilemap_get_at_pixel(tilemap,x,y-2)!=0)
{
	for (var i=0;i<32;i++)
	{
		if (tilemap_get_at_pixel(tilemap,x,y+i)==0)
		{
			y=y+i;
			vsp=0;
			show_debug_message("got stuck, relocating to: y+"+string(i));
			break;
		}
	}
}


tilemap2 = layer_tilemap_get_id("Platform");
tilemap3 = layer_tilemap_get_id("CollisionSmall");
if instance_exists(oGUIBAR){oGUIBAR.hp-=10;}
sprite_index=global.sPlayerF;
die=false;
self.depth=depth-12;
justcreated=true;
alarm[2]=10;
recovertime=30;
if instance_exists(oGUIBAR)
{
	if (oGUIBAR.hp==0)	{
		if (oRoomController.revived==false)
		{
			var chance = irandom_range(1,100);
			if (chance>5)&&(chance<13) {oRoomController.revived=true;
			//if (chance>0)&&(chance<101) {oRoomController.revived=true; // testing rida
				recovertime=140;
				oGUIBAR.hp+=10;
				// get depth
				var dept = layer_get_depth("Walls");
				var newdept= dept+50;
				var newlayer= layer_create(newdept,"Mobster");
				//// FX APPLY
				//var edge_fx = fx_create("_filter_edgedetect");
				//fx_set_parameter(edge_fx,"g_Threshold",0.025);
				//fx_set_single_layer(edge_fx, true);
				//layer_set_fx("Mobster", edge_fx);
				// create object on the newly created layer
				instance_create_layer(x,y,newlayer,oMobster);
				}
		}	
	}
}