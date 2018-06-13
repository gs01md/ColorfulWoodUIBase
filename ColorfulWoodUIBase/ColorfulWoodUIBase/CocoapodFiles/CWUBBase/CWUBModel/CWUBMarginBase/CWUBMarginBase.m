//
//  CWUBMarginBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBMarginBase.h"
#import "CWUBDefine.h"

@implementation CWUBMarginBase

- (instancetype)initWithLeft:(float)left right:(float)right top:(float)top bottom:(float)bottom{

    if (self = [super init]) {

        self.m_margin_left    =  left;
        self.m_margin_right   =  right;
        self.m_margin_top     =  top;
        self.m_margin_bottom  =  bottom;
    }

    return self;
}

- (float)m_margin_left{

    if (_m_margin_left <= 0) {
        _m_margin_left = CWUBBaseViewConfig_Space_Element_Horizontal;
    }

    return _m_margin_left;
}

- (float)m_margin_right{

    if (_m_margin_right <= 0) {
        _m_margin_right = CWUBBaseViewConfig_Space_Element_Horizontal;
    }

    return _m_margin_right;
}

- (float)m_margin_top{

    if (_m_margin_top <= 0) {
        _m_margin_top = CWUBBaseViewConfig_Space_Element_Vertical;
    }

    return _m_margin_top;
}

- (float)m_margin_bottom{

    if (_m_margin_bottom <= 0) {
        _m_margin_bottom = CWUBBaseViewConfig_Space_Element_Vertical;
    }

    return _m_margin_bottom;
}


@end
