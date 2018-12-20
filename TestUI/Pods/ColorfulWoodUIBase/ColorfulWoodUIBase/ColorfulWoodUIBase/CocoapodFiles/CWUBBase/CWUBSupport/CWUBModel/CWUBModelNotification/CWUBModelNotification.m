//
//  CWUBModelNotification.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/11/6.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBModelNotification.h"

@implementation CWUBModelNotification
- (NSString *)m_code{

    if (!_m_code) {
        _m_code = @"";
    }
    return _m_code;
}
- (NSString *)m_value{

    if (!_m_value) {
        _m_value = @"";
    }
    return _m_value;
}
@end
