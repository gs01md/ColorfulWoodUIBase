//
//  CWUBLabelWithModel.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBTextInfo.h"

@interface CWUBLabelWithModel : UILabel
-(instancetype) initWithModel:(CWUBTextInfo*)info;
-(void) interface_update:(CWUBTextInfo*)info;
@end
