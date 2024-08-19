/// @desc currently selected skin txt and price refresh

var settings = ds_map_secure_load("settings.sav");
skintokens =ds_map_find_value(settings,"skintokens");
if instance_exists(oPreviewTxt) {instance_destroy(oPreviewTxt);}
if instance_exists(oBuyTxt) {instance_destroy(oBuyTxt);}
// SKIN CONTROL
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
if (skintokens>=skinprice) {hasmoney=true;} else {hasmoney=false;} // if has enough to buy

with(instance_create_layer(round(x),round(y),"text",oPreviewTxt)) // create a preview text
	{
	skintxt=other.skintxt;	
	textscale=other.textscale;
	textalpha=other.textalpha;
	color=other.coloure;	
	}
	
// check if needs to buy or not
var settingsmap=ds_map_secure_load("settings.sav");
var whatkey = "Skin"+string(curskin)+"Bought";

isbought=ds_map_find_value(settingsmap,whatkey);


show_debug_message("Skin"+string(curskin)+" buyvalue is: "+string(isbought));

if is_undefined(isbought) {rdyToBuy=true;} else {
	
	if (isbought==0) {rdyToBuy=true;} else {
	
	rdyToBuy=false;}
	
	}

if (skintokens>=skinprice) {hasmoney=true;} else {hasmoney=false;}

 // index 13 wear // 12 buy // cant buy 14

// buy button index selection
if (rdyToBuy)
{
		if (hasmoney)
		{
			buyindex=12;
		} else {buyindex=14;}
} else {
	
	if (selectedskin==curskin) {buyindex=8;} else{buyindex=13;}
}


alarm[1]=3;