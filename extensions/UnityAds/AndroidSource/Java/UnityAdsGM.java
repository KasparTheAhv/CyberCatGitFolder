package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.content.Context;
import android.view.View;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import android.widget.AbsoluteLayout;
import android.view.ViewGroup;
import android.widget.Toast;
import java.lang.Exception;
import java.net.URL;
import android.provider.Settings;

import androidx.annotation.NonNull;
import android.util.Log;
import java.util.List;


import com.unity3d.ads.UnityAds;
import com.unity3d.ads.metadata.MetaData;
import com.unity3d.ads.IUnityAdsInitializationListener;

import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAdsShowOptions;

import com.unity3d.services.banners.BannerErrorCode;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.banners.BannerViewCache;

import android.graphics.Color;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.view.Gravity;

import android.widget.RelativeLayout;

public class UnityAdsGM implements IUnityAdsInitializationListener, BannerView.IListener, IUnityAdsLoadListener, IUnityAdsShowListener
{
	private static final int EVENT_OTHER_SOCIAL = 70;
	
	public static Activity activity = RunnerActivity.CurrentActivity;
	
	public void UnityAds_init(final String unityGameID,final double testMode)
	{		
		UnityAds.initialize(activity, unityGameID, testMode > 0.5, this);
	}
	
  @Override
  public void onInitializationComplete() 
  {
	int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
	RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onInitializationComplete");
	RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
  }

  @Override
  public void onInitializationFailed(UnityAds.UnityAdsInitializationError error, String message) 
  {
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onInitializationFailed");
		RunnerJNILib.DsMapAddString(dsMapIndex,"message",message);
		RunnerJNILib.DsMapAddDouble(dsMapIndex,"error",(double)error.ordinal());
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
  }
  
	public String UnityAds_getVersion()
	{
		return UnityAds.getVersion();
	}
	
	public void UnityAds_setMetadata_GDPR(double bool)
	{
		MetaData gdprMetaData = new MetaData(activity);
		if(bool >= 0.5)
			gdprMetaData.set("gdpr.consent",true);
		else
			gdprMetaData.set("gdpr.consent",false);
		gdprMetaData.commit();
	}
	
	public double UnityAds_isInitialized()
	{
		if(UnityAds.isInitialized())
			return 1.0;
		else
			return 0.0;
	}
	
	public double UnityAds_isSupported()
	{
		if(UnityAds.isSupported())
			return 1.0;
		else
			return 0.0;
	}
	
	public void UnityAds_load(String adUnitId)
	{
		UnityAds.load(adUnitId, this);
	}
	
	public void UnityAds_show(final String adUnitId)
	{
		UnityAds.show(activity, adUnitId, new UnityAdsShowOptions(), this);
	}

	@Override
	public void onUnityAdsAdLoaded(String placementId) 
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onUnityAdsAdLoaded");
		RunnerJNILib.DsMapAddString(dsMapIndex,"placementId",placementId);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
	}

     @Override
     public void onUnityAdsFailedToLoad(String placementId, UnityAds.UnityAdsLoadError error, String message) 
	 {
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onUnityAdsFailedToLoad");
		RunnerJNILib.DsMapAddString(dsMapIndex,"placementId",placementId);
		RunnerJNILib.DsMapAddString(dsMapIndex,"message",message);
		RunnerJNILib.DsMapAddDouble(dsMapIndex,"error",(double)error.ordinal());
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
     }
	 
     @Override
     public void onUnityAdsShowFailure(String placementId, UnityAds.UnityAdsShowError error, String message) 
	 {
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onUnityAdsShowFailure");
		RunnerJNILib.DsMapAddString(dsMapIndex,"placementId",placementId);
		RunnerJNILib.DsMapAddString(dsMapIndex,"message",message);
		RunnerJNILib.DsMapAddDouble(dsMapIndex,"error",(double)error.ordinal());
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
     }

     @Override
     public void onUnityAdsShowStart(String placementId) 
	 {
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onUnityAdsShowStart");
		RunnerJNILib.DsMapAddString(dsMapIndex,"placementId",placementId);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
     }

     @Override
     public void onUnityAdsShowClick(String placementId) 
	 {
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onUnityAdsShowClick");
		RunnerJNILib.DsMapAddString(dsMapIndex,"placementId",placementId);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
     }

     @Override
     public void onUnityAdsShowComplete(String placementId, UnityAds.UnityAdsShowCompletionState state) 
	 {
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds_onUnityAdsShowComplete");
		RunnerJNILib.DsMapAddString(dsMapIndex,"placementId",placementId);
		RunnerJNILib.DsMapAddDouble(dsMapIndex,"state",(double)state.ordinal());
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
     }
	
	//////////////////////////////////////// BANNER //////////////////////
	
	private BannerView bannerView = null;
	
	public void UnityAds_Banner_create(final String placementId,final double bottom,final double w,final double h)
	{
		RunnerActivity.ViewHandler.post( new Runnable() 
		{
			public void run() 
			{
				bannerView = new BannerView(activity,placementId, new UnityBannerSize((int)w,(int)h));//320, 50
				bannerView.setListener(UnityAdsGM.this);
				
				RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(
																	RelativeLayout.LayoutParams.FILL_PARENT, 
																	RelativeLayout.LayoutParams.FILL_PARENT);
				bannerView.setLayoutParams(params);
				
				if(bottom > 0.5)
					bannerView.setGravity(Gravity.BOTTOM + Gravity.CENTER_HORIZONTAL);
				else
					bannerView.setGravity(Gravity.CENTER_HORIZONTAL);
				
				bannerView.requestLayout();
				bannerView.setVisibility(View.VISIBLE);
				bannerView.setBackgroundColor(Color.TRANSPARENT);
				
				final ViewGroup rootView = activity.findViewById(android.R.id.content);
				rootView.addView(bannerView);
				
				bannerView.load();
			}
		});
	}
	
	public void UnityAds_Banner_destroy()
	{
		bannerView.destroy();
		bannerView = null;
	}
	
    @Override
    public void onBannerLoaded(BannerView bannerAdView) 
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds");
		RunnerJNILib.DsMapAddString(dsMapIndex,"event","onBannerLoaded");
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }

    @Override
    public void onBannerFailedToLoad(BannerView bannerAdView, BannerErrorInfo errorInfo) 
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds");
		RunnerJNILib.DsMapAddString(dsMapIndex,"event","onBannerFailedToLoad");
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }

    @Override
    public void onBannerClick(BannerView bannerAdView) 
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds");
		RunnerJNILib.DsMapAddString(dsMapIndex,"event","onBannerClick");
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }

    @Override
    public void onBannerLeftApplication(BannerView bannerAdView) 
	{
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex,"type","UnityAds");
		RunnerJNILib.DsMapAddString(dsMapIndex,"event","onBannerLeftApplication");
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
    }
	
}	


