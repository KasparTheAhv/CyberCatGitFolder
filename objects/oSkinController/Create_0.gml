/// @desc
var settingsmap=ds_map_secure_load("settings.sav");
xx=0;
tmap = layer_tilemap_get_id("TestTiles");
tilemap_x(tmap,xx);
tmap2 = layer_tilemap_get_id("TestTiles2");
tilemap_x(tmap2,xx);
tmap3 = layer_tilemap_get_id("TestTiles3");
tilemap_x(tmap3,xx);
tmap4 = layer_tilemap_get_id("TestTiles4");
tilemap_x(tmap4,xx);

camera_set_view_size(view_camera[0],800,global.menuH);



var canDaily=ds_map_find_value(settingsmap,"canDaily");
// when to create dailyreward token button

	var hasNetwork = os_is_network_connected();
	var hasUnity = UnityAds_isInitialized();
	var isReady = global.unityRDY;

		show_debug_message("hasNet: "+string(hasNetwork));
		show_debug_message("hasUnity: "+string(hasUnity));
		show_debug_message("isReady: "+string(isReady));
	
	
if (hasNetwork) && (hasUnity) && (isReady)
{
	
	if !instance_exists(oDailyReward) && (canDaily==1)
	{
	instance_create_layer(x,y,"Instances",oDailyReward);
	}
}




// make first skin bought

var whatkey = "Skin1Bought";
ds_map_set(settingsmap,whatkey,1);
ds_map_secure_save(settingsmap,"settings.sav");
// check if needs to buy or not
skintokens =ds_map_find_value(settingsmap,"skintokens");
curskin=ds_map_find_value(settingsmap,"skin");
selectedskin=curskin;
var whatkey = "Skin"+string(curskin)+"Bought";
isbought=ds_map_find_value(settingsmap,whatkey);
if (isbought==0) {rdyToBuy=true;} else {rdyToBuy=false;}

// skin prices and txt /// Also update in Alarm 0 // SKIN CONTROL
skintxt="";
if (curskin==1) {skinprice=0; skintxt="Default";}
if (curskin==2) {skinprice=8; skintxt="Termicator";}
if (curskin==3) {skinprice=8; skintxt="Toy Car";}
if (curskin==4) {skinprice=8; skintxt="BatCat";}
if (curskin==5) {skinprice=8; skintxt="Rosy";}
if (curskin==6) {skinprice=8; skintxt="Anatomy";}
if (curskin==7) {skinprice=8; skintxt="BeeCat";}
if (curskin==8) {skinprice=8; skintxt="Milton";}
if (curskin==9) {skinprice=8; skintxt="Penqitten";}
if (curskin==10) {skinprice=8; skintxt="Ghetto";}
if (curskin==11) {skinprice=8; skintxt="KawaiCat";}
// MAX SKINS
maxskinamount=11;





image_speed=0;
image_index=15;
image_xscale=2;
image_yscale=2;


// skin selection in middle bottom
self.x=800*0.5;
self.y=global.menuH*0.85;


// selected preview
selectedX=800*0.05;
selectedY=global.menuH*0.7;

// edasi arrow
edasiX=x+100;
tagasiX=x-100


// arrow indexes
arrowedasiindex=0;
arrowtagasiindex=0;
buyblocker=false;

//SCRIBBLE
coloure="[#FFFFFF]";
scale=0.25;
textalpha="[alpha,"+string(image_alpha)+"]";
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";
textscale2=string(0.5);
textscale2="[scale,"+string(textscale2)+"]";
	with(instance_create_layer(selectedX,selectedY,"text",oSelectedTxt))
	{
	textscale=other.textscale;
	textalpha=other.textalpha;
	color=other.coloure;
	}

// buy button / select button
buybuttonX=800*0.95;
buybuttonY=global.menuH*0.7;

buyindex=8; // invisi
buyheld=0;
if (skintokens>=skinprice) {hasmoney=true;} else {hasmoney=false;}

 // index 13 wear // 12 buy // cant buy 14
showbutton=true;
// buy button index selection
if (rdyToBuy)
{
		if (hasmoney)
		{
			buyindex=12;
		} else {buyindex=14;}
} else {
	
	if (selectedskin==curskin) {buyindex=8;}else{buyindex=13;}
}

alarm[0]=1; // skin name txt maker