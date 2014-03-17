#import <Foundation/Foundation.h>
#import "Playnomics.h"

@interface PNDelegate : NSObject<PlaynomicsPlacementRawDelegate,
                                 PlaynomicsSegmentationDelegate>
@end