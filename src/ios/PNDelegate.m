#import "PNDelegate.h"

@implementation PNDelegate

-(void) onTouch:(NSString *) rawJson{
    PNOnTouch(rawJson);
}

-(void) onClose:(NSString *) rawJson{
    PNOnTouch(rawJson);
}

-(void) onShow:(NSString *) rawJson{
    PNOnShow(rawJson);
}

-(void) onDidFailToRender(){
    PNOnRenderFailed();
}

@end