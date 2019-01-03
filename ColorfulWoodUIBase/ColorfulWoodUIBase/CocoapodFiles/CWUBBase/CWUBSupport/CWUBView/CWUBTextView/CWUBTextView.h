//
//  CWUBTextView.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/2.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBTextInfo.h"
#import <ColorfulWoodCategories/NSString+ColorfulWoodRegex.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWUBTextView : UITextView
-(instancetype) initWithModel:(CWUBTextInfo*)info;
-(void) interface_update:(CWUBTextInfo*)info;
@end

NS_ASSUME_NONNULL_END
