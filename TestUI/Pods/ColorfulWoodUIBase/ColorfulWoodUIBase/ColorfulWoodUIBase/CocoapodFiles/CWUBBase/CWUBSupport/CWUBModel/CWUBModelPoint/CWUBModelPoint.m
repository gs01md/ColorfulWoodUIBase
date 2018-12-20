//
//  CWUBModelPoint.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/29.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBModelPoint.h"

@implementation CWUBModelPoint

- (instancetype)initWithDirect:(CWPVDirection)direct size:(float)size offset:(float)offset{

    if (self = [super init]) {

        self.m_offset = offset;
        self.m_size = size;
        self.m_direct = direct;

    }

    return self;
}

- (UIColor *)m_color{

    if (!_m_color) {
        _m_color = [UIColor redColor];
    }
    return _m_color;
}

@end
