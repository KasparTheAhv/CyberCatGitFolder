show_debug_message("Async Json Encode: " + json_encode(async_load))
switch(async_load[?"type"])
{
	case "UnityAds_onInitializationComplete":
		//instance_create_depth(400,200,0,Obj_UnityAds_banner)
		instance_create_depth(400,300,0,Obj_UnityAds_placement,{placementId:id_interstitial})
		instance_create_depth(400,400,0,Obj_UnityAds_placement,{placementId:id_rewardedVideo})
		show_debug_message("UNITY ADS Init Success");
	break

	case "UnityAds_onInitializationFailed":
		show_message_async(json_encode(async_load))
		var message_ = async_load[?"message"];
		var error = async_load[?"error"]
		show_debug_message("UNITY Init Failed. Message: "+string(message_)+" and Error: "+string(error));
	break
	
	
	case "UnityAds_onUnityAdsAdLoaded":
		var placementId = async_load[?"placementId"]
		show_debug_message("Ad loaded");
		global.unityRDY=true;
	break
		
		
	case "UnityAds_onUnityAdsFailedToLoad":
		var placementId = async_load[?"placementId"]
		var message_ = async_load[?"message"];
		var error = async_load[?"error"]
		show_debug_message("Ad failed to load. Message: "+string(message_)+" and Error: "+string(error));
	break
		
		
	case "UnityAds_onUnityAdsShowFailure":
		var placementId = async_load[?"placementId"]
		var message_ = async_load[?"message"];
		var error = async_load[?"error"]
		show_debug_message("Ad showing failed. Message: "+string(message_)+" and Error: "+string(error));
	break
		
		
	case "UnityAds_onUnityAdsShowStart":
		var placementId = async_load[?"placementId"]
	break
	
	case "UnityAds_onUnityAdsShowClick":
		var placementId = async_load[?"placementId"]
	break
	
	case "UnityAds_onUnityAdsShowComplete":
		var placementId = async_load[?"placementId"]
		var state = async_load[?"state"]
		staterino=real(state);
		
		// Watch ad to unlock level block
		if (room==RoomLvl)
		{
			if(state == 1) // AD reward player
			{
				if instance_exists(oAdWaiter) {with(oAdWaiter) {shouldreward=true; alarm[10]=40;}}
				with(oLevelGo) {expanded=2;}
			} else {
				with(oLevelGo) {
				adtext="Watching failed.\nTry again!";
				show_debug_message(adtext);
				adindex=0;
				expanded=1;
				clicked=false;
				}
			}
		}
		
		// revive
		if (instance_exists(oPlayerFall))
		{
			if (state == 1)
			{
				with (oPlayerFall) {alarm[9]=30;}
				with (oAdRevive) {cur_state=adReviveStates.fade; image_index=2;}
			} else {
				with (oPlayerFall) {alarm[3]=30;}
				with (oAdRevive) {cur_state=adReviveStates.fade; image_index=3;}
				adtext="Watching failed.\nTry again!";
				show_debug_message(adtext);
			}
		}
		
		if (room==RoomSkins)
		{
			if (state == 1)
			{
				with (oAdToken) {
					alarm[7]=1;
					}
				
			} else {
				with (oAdToken) {cur_state=adReviveStates.fade; image_index=3;}
				adtext="Watching failed.\nTry again!";
				show_debug_message(adtext);
			}
		}
		
		UnityAds_load(placementId)
		
	break

	case "onBannerLoaded":
	break
	
	case "onBannerFailedToLoad":
	break
	
	case "onBannerClick":
	break
	
	case "onBannerLeftApplication":
	break
	
}
