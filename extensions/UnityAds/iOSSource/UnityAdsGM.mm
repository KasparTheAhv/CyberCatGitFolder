
#import "UnityAdsGM.h"

const int EVENT_OTHER_SOCIAL = 70;
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
extern "C" void dsMapAddDouble(int _dsMap, const char* _key, double _value);
extern "C" void dsMapAddString(int _dsMap, const char* _key, const char* _value);
extern UIViewController *g_controller;
extern UIView *g_glView;
extern int g_DeviceWidth;
extern int g_DeviceHeight;

@implementation UnityAdsGM

-(id)init {
    if ( self = [super init] ) {
        return self;
    }
}

-(void) UnityAds_setMetadata_GDPR:(double) bool_
{
	UADSMetaData *gdprConsentMetaData = [[UADSMetaData alloc] init];
	if(bool_)
		[gdprConsentMetaData set:@"gdpr.consent" value:@YES];
	else
		[gdprConsentMetaData set:@"gdpr.consent" value:@NO];
	[gdprConsentMetaData commit];
}

-(void) UnityAds_init:(NSString*) unityGameID testMode_: (double) testMode_
{
    bool testMode = testMode_ > 0.5;
    [UnityAds initialize:unityGameID testMode:testMode>=0.5 initializationDelegate:self];
}

- (void)initializationComplete
{
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onInitializationComplete");
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)initializationFailed: (UnityAdsInitializationError)error withMessage: (NSString *)message
{
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onInitializationFailed");
	dsMapAddString(dsMapIndex, "message",(char*)[message UTF8String]);
	dsMapAddDouble(dsMapIndex, "error", error);
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)unityAdsAdLoaded: (NSString *)placementId
{
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onUnityAdsAdLoaded");
	dsMapAddString(dsMapIndex, "placementId",(char*)[placementId UTF8String]);
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)unityAdsAdFailedToLoad: (NSString *)placementId withError: (UnityAdsLoadError)error withMessage: (NSString *)message
{   
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onUnityAdsFailedToLoad");
	dsMapAddString(dsMapIndex, "placementId",(char*)[placementId UTF8String]);
	dsMapAddString(dsMapIndex, "message",(char*)[message UTF8String]);
	dsMapAddDouble(dsMapIndex, "error", error);
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)unityAdsShowComplete: (NSString *)adUnitId withFinishState: (UnityAdsShowCompletionState)state
{
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onUnityAdsShowComplete");
	dsMapAddString(dsMapIndex, "placementId",(char*)[adUnitId UTF8String]);
	dsMapAddDouble(dsMapIndex, "state", state);
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)unityAdsShowFailed: (NSString *)adUnitId withError: (UnityAdsShowError)error withMessage: (NSString *)message
{
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onUnityAdsShowFailure");
	dsMapAddString(dsMapIndex, "placementId",(char*)[adUnitId UTF8String]);
	dsMapAddString(dsMapIndex, "message",(char*)[message UTF8String]);
	dsMapAddDouble(dsMapIndex, "error", error);
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)unityAdsShowStart: (NSString *)adUnitId
{
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onUnityAdsShowStart");
	dsMapAddString(dsMapIndex, "placementId",(char*)[adUnitId UTF8String]);
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

- (void)unityAdsShowClick: (NSString *)adUnitId
{
	int dsMapIndex = CreateDsMap(0);
	dsMapAddString(dsMapIndex, "type","UnityAds_onUnityAdsShowClick");
	dsMapAddString(dsMapIndex, "placementId",(char*)[adUnitId UTF8String]);
	CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(double) UnityAds_isInitialized
{
    if([UnityAds isInitialized])
        return 1.0;
    else
        return 0.0;
}

-(double) UnityAds_isSupported
{
    if([UnityAds isSupported])
        return 1.0;
    else
        return 0.0;
}

-(NSString*) UnityAds_getVersion
{
	return [UnityServices getVersion];
}

-(void) UnityAds_load: (NSString*) adUnitId
{
	[UnityAds load: adUnitId options:[UADSLoadOptions new] loadDelegate:self];
}

-(void) UnityAds_show:(NSString*) placementId
{
    [UnityAds show: g_controller placementId:placementId options:[UADSShowOptions new] showDelegate:self];
}


-(void) UnityAds_Banner_create:(NSString*) placementId bottom: (double) bottom W: (double) w H: (double) h
{
    //[UnityAdsBanner loadBanner: placementId];
    
    self.bannerView = [[UADSBannerView alloc] initWithPlacementId:placementId size:CGSizeMake(w,h)];
    self.bannerView.delegate = self;
    
    if(bottom > 0.5)
        [self addBannerViewToBottomView:self.bannerView];
    else
        [self addBannerViewToTopView:self.bannerView];
        
    // Set background or background color for banner and MREC ads to be fully functional
    //self.bannerView.backgroundColor = BACKGROUND_COLOR;
    
    // Load the ad
    [self.bannerView load];
}

-(void) UnityAds_Banner_destroy
{
    if(self.bannerView == nil)
        return;
    
    self.bannerView.delegate = nil;
    [self.bannerView removeFromSuperview];
    [self.bannerView release];
    self.bannerView = nil;
}

////////////////////////////////// CALLBACKS //////////////////////////

-(void)unityAdsReady:(NSString *)placementId
{
    int dsMapIndex = CreateDsMap(3,
                             "type", 0.0, "UnityAds",
                             "event", 0.0, "AdReady",
                             "placementId", 0.0, [placementId UTF8String]
                             );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(void)unityAdsDidStart:(NSString *)placementId
{
    int dsMapIndex = CreateDsMap(3,
                             "type", 0.0, "UnityAds",
                             "event", 0.0, "AdStart",
                             "placementId", 0.0, [placementId UTF8String]
                             );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

////////////////////////////////////////////////////////////////

-(void)bannerViewDidLoad:(UADSBannerView *)bannerView
{
    int dsMapIndex = CreateDsMap(2,
                             "type", 0.0, "UnityAds",
                             "event", 0.0, "onBannerLoaded"
                             );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(void)bannerViewDidClick:(UADSBannerView *)bannerView
{
    int dsMapIndex = CreateDsMap(2,
                             "type", 0.0, "UnityAds",
                             "event", 0.0, "onBannerClick"
                             );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(void)bannerViewDidLeaveApplication:(UADSBannerView *)bannerView
{
    int dsMapIndex = CreateDsMap(2,
                             "type", 0.0, "UnityAds",
                             "event", 0.0, "onBannerLeftApplication"
                             );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}

-(void)bannerViewDidError:(UADSBannerView *)bannerView error:(UADSBannerError *)error
{
    int dsMapIndex = CreateDsMap(2,
                             "type", 0.0, "UnityAds",
                             "event", 0.0, "onBannerFailedToLoad"
                             );
    CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
}





//////////////////////////
//https://docs.unity3d.com/Packages/com.unity.ads@3.3/manual/MonetizationBannerAdsIos.html
- (void)addBannerViewToTopView:(UIView *)bannerView
{
    bannerView.translatesAutoresizingMaskIntoConstraints = NO;
    [g_glView addSubview:bannerView];
    [g_glView addConstraints:@[
                               [NSLayoutConstraint constraintWithItem:bannerView
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g_controller.topLayoutGuide
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1
                                                             constant:0],
                               [NSLayoutConstraint constraintWithItem:bannerView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g_controller.view
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0]
                               ]];
}

-(void)addBannerViewToBottomView:(UIView *)bannerView
{
    bannerView.translatesAutoresizingMaskIntoConstraints = NO;
    [g_glView addSubview:bannerView];
    [g_glView addConstraints:@[
                               [NSLayoutConstraint constraintWithItem:bannerView
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g_controller.bottomLayoutGuide
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1
                                                             constant:0],
                               [NSLayoutConstraint constraintWithItem:bannerView
                                                            attribute:NSLayoutAttributeCenterX
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:g_controller.view
                                                            attribute:NSLayoutAttributeCenterX
                                                           multiplier:1
                                                             constant:0]
                               ]];
}
@end

