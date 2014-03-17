#import "PNDelegate.h"

@implementation PNDelegate

-(void) onTouch:(NSString *) rawJson{
    UnitySendMessage("Playnomics", "OnTouch", rawJson ? [rawJson UTF8String] : "");
}

-(void) onClose:(NSString *) rawJson{
    UnitySendMessage("Playnomics", "OnClose", rawJson ? [rawJson UTF8String] : "");
}

-(void) onShow:(NSString *) rawJson{
    UnitySendMessage("Playnomics", "OnShow", rawJson ? [rawJson UTF8String] : "");
}

-(void) onDidFailToRender {
    UnitySendMessage("Playnomics", "OnRenderFailed", "");
}

-(void)onFetchedUserSegmentIds:(NSArray*) segmentationIds{
    NSString* jsonArrayValues = nil;
    NSData* arrayData = nil;
    if (segmentationIds!=nil) {
        NSError *error = nil;
        NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];
        if (segmentationIds!=nil)
            [jsonDict setObject:segmentationIds forKey:@"segments"];
        //
        arrayData = [NSJSONSerialization dataWithJSONObject:jsonDict options:NSJSONWritingPrettyPrinted error:&error];
        [jsonDict release];
        jsonArrayValues = [[NSString alloc] initWithData:arrayData encoding:NSUTF8StringEncoding];
    }
    UnitySendMessage("Playnomics", "OnFetchedUserSegmentIds", jsonArrayValues ? [jsonArrayValues UTF8String] : "");
    //
    [jsonArrayValues autorelease];
}

-(void)onFetchedUserSegmentIdsError:(NSString*)error description:(NSString*)description{
    NSString* jsonArrayValues = nil;
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];
    if (error!=nil)
        [jsonDict setObject:error forKey:@"error"];
    if (description!=nil)
        [jsonDict setObject:description forKey:@"description"];
    //
    NSError* err = nil;
    NSData *arrayData = [NSJSONSerialization dataWithJSONObject:jsonDict options:NSJSONWritingPrettyPrinted error:&err];
    [jsonDict release];
    jsonArrayValues = [[NSString alloc] initWithData:arrayData encoding:NSUTF8StringEncoding];
    
    UnitySendMessage("Playnomics", "OnFetchedUserSegmentIdsError", jsonArrayValues ? [jsonArrayValues UTF8String] : "");
    //
    [jsonArrayValues autorelease];
}

@end