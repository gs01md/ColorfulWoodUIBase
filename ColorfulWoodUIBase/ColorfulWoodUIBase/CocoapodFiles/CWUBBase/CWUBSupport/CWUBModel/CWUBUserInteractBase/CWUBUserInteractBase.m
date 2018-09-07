//
//  CWUBUserInteractBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/9.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBUserInteractBase.h"

@implementation CWUBUserInteractBase
- (NSString*) m_canUserInteract{

    if (!_m_canUserInteract) {
        _m_canUserInteract = @"1";
    }

    return _m_canUserInteract;
}
@end
