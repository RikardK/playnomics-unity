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
    const char* utf8Val = string == nil ? [nsString UTF8String] : "";
	const char* res = (char*)malloc(strlen(utf8Val) + 1);
	strcpy(res, utf8Val);
	return res;
}

void PNStartSDK(long applicationId)
{
    [Playnomics startWithApplicationId:applicationId];
}

void PNStartSDK(long applicationId, const char* userId)
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
    [Playnomics transactionWithUSDPrice: price quantity: nsQuantity];
    [nsPrice autorelease];
}

void PNPreloadPlacement(const char* placementName)
{
    NSString *nsPlacementName = PNCreateNSString(placementName);
    [Playnomics preloadPlacementsWithNames: nsPlacementName];
}

void PNShowPlacement(const char* placementName)
{
    if(delegate == nil){
        delegate = [[PNDelegate alloc] init];
    }

    NSString *nsPlacementName = PNCreateNSString(placementName);
    [Playnomics showPlacementWithName: nsPlacementName];
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

void PNAttributeInstall(const char* source, const char* campaign)
{
    NSString *nsSource = PNCreateNSString(source);
    NSString *nsCampaign = PNCreateNSString(campaign);
    [Playnomics attributeInstallToSource: nsSource withCampaign: nsCampaign];
}

void PNAttributeInstall(const char* source, const char* campaign, long installTimeMilliseconds)
{
    NSString *nsSource = PNCreateNSString(source);
    NSString *nsCampaign = PNCreateNSString(campaign);
    NSTimeInterval installTimeSeconds = installTimeMilliseconds/1000;
    NSDate *nsInstallDate = [[NSDate alloc] initWithTimeIntervalSince1970: installTimeSeconds];
    [Playnomics attributeInstallToSource: nsSource withCampaign: nsCampaign];
    [nsInstallDate autorelease];
}

void PNOnShow(NSString *rawJson)
{
    UnitySendMessage("Playnomics", "OnShow", PNMakeStringCopy(rawJson));
}

void PNOnTouch(NSString *rawJson)
{
    UnitySendMessage("Playnomics", "OnTouch", PNMakeStringCopy(rawJson));
}

void PNOnClose(NSString *rawJson)
{
    UnitySendMessage("Playnomics", "OnClose", PNMakeStringCopy(rawJson));
}

void PNOnRenderFailed()
{
    UnitySendMessage("Playnomics", "OnRenderFailed", "");
}

void PNStop
{
    [delegate autorelease];
}