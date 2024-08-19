staterino=0;
var unityGameID;

if code_is_compiled()
{
var testing = false;
} else {var testing=true;}

global.unityTesting=testing;
switch(os_type)
{
	case os_android:
		unityGameID = "5269785";
	break
	
	case os_ios:
		unityGameID = "5269784";
	break
	
	case os_windows:
		unityGameID = "000000";
	break
	
	case os_operagx:
		unityGameID = "000000";
	break
}

//UnityAds_setMetadata_GDPR(true)
if (os_type==os_windows) {exit; instance_destroy();}
if (os_type==os_operagx) {exit; instance_destroy();}
UnityAds_init(unityGameID,testing);

id_banner = "Banner";
id_interstitial = "video";
id_rewardedVideo = "Rewarded_Android";

