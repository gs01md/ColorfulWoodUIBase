//
//  CWUBUITapGestureRecognizer.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/7.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBUITapGestureRecognizer.h"

@implementation CWUBUITapGestureRecognizer
- (NSString *)m_event_opt_code{

    if (!_m_event_opt_code) {
        _m_event_opt_code = @"";
    }

    return _m_event_opt_code;
}
@end
