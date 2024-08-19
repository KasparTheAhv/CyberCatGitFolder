
#import <UIKit/UIKit.h>
#import <UnityAds/UnityAds.h>

@interface UnityAdsGM:NSObject <UnityAdsInitializationDelegate,UnityAdsLoadDelegate,UnityAdsShowDelegate,UADSBannerViewDelegate>
{

}

@property (nonatomic, strong) UADSBannerView *bannerView;


@end


