//
//  CWUBBottomLineInfo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/28.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBBottomLineInfo.h"

@implementation CWUBBottomLineInfo

- (float) m_height{

    if (_m_height<=0.) {
        _m_height = 1.;
    }

    return _m_height;
}

@end
