if (image_index==4) {exit;}
if (image_index==1) {exit;}


var canAd = true;
var hasNetwork = os_is_network_connected();
var hasUnity = UnityAds_isInitialized();
var isReady = global.unityRDY;

if !(isReady) {canAd=false;}
if !(hasUnity) {canAd=false;}
if !(hasNetwork) {canAd=false;}


if (instance_exists(oLevelGo)) {exit;}
else 
{
	if (levelnr=999)
	{
		with (oTransition) {target=other.whereto;}
		SlideTransition(TRANS_MODE.GOTO,RoomMenu);
	}
	else
	{
		if (unlocked) && (myadunlocked==1) 
		{	
		image_index=2;	
			with(instance_create_layer(x,y,"LvlGui",oLevelGo))
			{
			image_index=5;
			adtext="Watch an AD\nto unlock the\nnext 4 rooms";
			disclearned=ds_map_find_value(settingsmap,"DiscLearned");
			if is_undefined(disclearned) {disclearned=0;}
			levelnr=other.levelnr;
			who=other.id;
			actuallevel=other.actuallevel;
			whereto=other.whereto;
			}
			with (oLevel)
			{
			if (self.levelnr==999) {image_alpha=0;}	
			}
		} else { //watch ad instead to unlock cage
			with(instance_create_layer(x,y,"LvlGui",oLevelGo))
			{
					if (global.isAndroid)
			{
			if !(canAd) {adtext="Need internet\nconnection\nto continue";
				image_index=8;
				} else {adtext="Watch an AD\nto unlock the\nnext 4 rooms";}
			}
			whatblock=other.myblock;
			watchad=true;
			levelnr=other.levelnr;
			who=other.id;
			actuallevel=other.actuallevel;
			whereto=other.whereto;
			}
			with (oLevel)
			{
			if (self.levelnr==999) {image_alpha=0;}	
			}
			
		}
	}
}