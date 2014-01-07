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
@end