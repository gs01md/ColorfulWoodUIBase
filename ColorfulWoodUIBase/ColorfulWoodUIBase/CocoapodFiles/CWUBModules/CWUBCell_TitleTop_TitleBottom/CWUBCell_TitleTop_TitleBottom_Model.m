//
//  CWUBCell_TitleTop_TitleBottom_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleTop_TitleBottom_Model.h"

@implementation CWUBCell_TitleTop_TitleBottom_Model
- (CWUBTextInfo*) m_title_top{

    if (!_m_title_top) {
        _m_title_top = [CWUBTextInfo new];
    }

    return _m_title_top;
}

- (CWUBTextInfo*) m_title_bottom{

    if (!_m_title_bottom) {
        _m_title_bottom = [CWUBTextInfo new];
    }

    return _m_title_bottom;
}
@end
