//
//  CWUBButtonWithInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBButtonInfo.h"

@interface CWUBButtonWithInfo : UIButton
- (instancetype)initWithModel:(CWUBButtonInfo*)info;
- (void)interface_updateWithModel:(CWUBButtonInfo*)info;
@end
