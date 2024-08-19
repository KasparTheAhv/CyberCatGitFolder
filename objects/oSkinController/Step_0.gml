/// @desc
// controls room visual
if (xx<=-800) {xx=0;}
xx-=2;
tilemap_x(tmap,xx);
tilemap_x(tmap2,xx);
tilemap_x(tmap3,xx);
tilemap_x(tmap4,xx);


// arrow indexes
if mouse_check_button(mb_any)
{
	if (point_distance(mouse_x,mouse_y,edasiX,y)<50)
	{
	arrowedasiindex=1;	
	} else {
	arrowedasiindex=0;
	}
	if (point_distance(mouse_x,mouse_y,tagasiX,y)<50)
	{
	arrowtagasiindex=1;	
	} else {
	arrowtagasiindex=0;
	}
} else {
	arrowtagasiindex=0;
	arrowedasiindex=0;
}


// index 13 wear // 12 buy // cant buy 14
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


// buy hold controller
if mouse_check_button(mb_any) && (rdyToBuy) && (hasmoney)
{
	if (point_distance(mouse_x,mouse_y,buybuttonX,buybuttonY)<50)	
	{
		if (buyheld<40)
		{
			if !(buyblocker) {buyheld+=0.5;} else {buyheld=0;}
		} 
		else 
		{ // make the purchase
			buyheld=0;		
			var settingsmap =ds_map_secure_load("settings.sav");
			var skintokens = ds_map_find_value(settingsmap,"skintokens");
			if (curskin==1) {skinprice=0; }
			if (curskin==2) {skinprice=8; }
			if (curskin==3) {skinprice=8; }
			if (curskin==4) {skinprice=8; }
			if (curskin==5) {skinprice=8; }
			if (curskin==6) {skinprice=8; }
			if (curskin==7) {skinprice=8; }
			if (curskin==8) {skinprice=8; }
			if (curskin==9) {skinprice=8; }
			if (curskin==10) {skinprice=8; }
			if (curskin==11) {skinprice=8; }
			if (skintokens>=skinprice) // check if can actually buy
			{
				var whatkey = "Skin"+string(curskin)+"Bought";
				// remove tokens
				var newskintokens=skintokens-skinprice;
				ds_map_set(settingsmap,"skintokens",newskintokens); // remove tokens
				ds_map_set(settingsmap,whatkey,1); // make skin bought
				ds_map_set(settingsmap,"skin",curskin); // set the skin
				ds_map_secure_save(settingsmap,"settings.sav"); // save new stuff
				if instance_exists(oPlayControllerA) {oPlayControllerA.alarm[2]=10;} // data upload
				
				selectedskin=curskin;
				alarm[0]=1; // refresh
				oSkinBalance.alarm[0]=1;
				buyblocker=true;
			}
		} 
	}		
} else {buyheld=0;}	


