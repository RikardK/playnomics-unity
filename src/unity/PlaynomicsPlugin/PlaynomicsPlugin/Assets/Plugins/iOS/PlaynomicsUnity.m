#import <Foundation/Foundation.h>
#import "Playnomics.h"
#import "PNDelegate.h"

static PNDelegate* delegate = nil;

// Converts C style string to NSString
NSString* PNCreateNSString (const char* string)
{
    if (string){
        return [NSString stringWithUTF8String: string];
    }
    return nil;
}

const char* PNMakeStringCopy(NSString *nsString)
{
    const char* utf8Val = nsString ? [nsString UTF8String] : "";
	char* res = (char*)malloc(strlen(utf8Val) + 1);
	strcpy(res, utf8Val);
	return res;
}

void PNStart(long long applicationId)
{
    [Playnomics startWithApplicationId:applicationId];
}

void PNStartWithUserId(long long applicationId, const char* userId)
{
    NSString *nsUserId = PNCreateNSString(userId);
    [Playnomics startWithApplicationId:applicationId andUserId: nsUserId];
}

void PNCustomEvent(const char* customEventName)
{
    NSString *nsCustomEventName = PNCreateNSString(customEventName);
    [Playnomics customEventWithName: nsCustomEventName];
}

void PNTransactionInUSD(float price, int quantity)
{
    NSNumber *nsPrice = [[NSNumber alloc] initWithFloat: price];
    NSInteger nsQuantity = quantity;
    [Playnomics transactionWithUSDPrice: nsPrice quantity: nsQuantity];
    [nsPrice autorelease];
}

void PNPreloadPlacement(const char* placementName)
{
    NSString *nsPlacementName = PNCreateNSString(placementName);
    [Playnomics preloadPlacementsWithNames: nsPlacementName, nil];
}

void PNShowPlacement(const char* placementName)
{
    if(!delegate){
        delegate = [[PNDelegate alloc] init];
    }

    NSString *nsPlacementName = PNCreateNSString(placementName);
    [Playnomics showPlacementWithName: nsPlacementName rawDelegate:delegate];
}

void PNHidePlacement(const char* placementName)
{
    NSString *nsPlacementName = PNCreateNSString(placementName);
    [Playnomics hidePlacementWithName: nsPlacementName];
}

void PNAttributeInstall(const char* source)
{
    NSString *nsSource = PNCreateNSString(source);
    [Playnomics attributeInstallToSource: nsSource];
}

void PNAttributeInstallWithCampaign(const char* source, const char* campaign)
{
    NSString *nsSource = PNCreateNSString(source);
    NSString *nsCampaign = PNCreateNSString(campaign);
    [Playnomics attributeInstallToSource: nsSource withCampaign: nsCampaign];
}

void PNAttributeInstallWithCampaignTime(const char* source, const char* campaign, long long installTimeMilliseconds)
{
    NSString *nsSource = PNCreateNSString(source);
    NSString *nsCampaign = PNCreateNSString(campaign);
    NSTimeInterval installTimeSeconds = installTimeMilliseconds/1000;
    NSDate *nsInstallDate = [[NSDate alloc] initWithTimeIntervalSince1970: installTimeSeconds];
    [Playnomics attributeInstallToSource: nsSource withCampaign: nsCampaign];
    [nsInstallDate autorelease];
}

void PNStop()
{
    [delegate autorelease];
}