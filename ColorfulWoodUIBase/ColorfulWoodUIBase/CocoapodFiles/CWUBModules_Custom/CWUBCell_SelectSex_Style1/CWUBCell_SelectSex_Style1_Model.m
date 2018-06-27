//
//  CWUBCell_SelectSex_Style1_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/27.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_SelectSex_Style1_Model.h"

@implementation CWUBCell_SelectSex_Style1_Model
- (CWUBTextInfo*)m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
        
    }
    return _m_title_left;
}

- (CWUBTextInfo*)m_title_man{

    if (!_m_title_man) {
        _m_title_man = [CWUBTextInfo new];

    }
    return _m_title_man;
}

- (CWUBTextInfo*)m_title_woman{

    if (!_m_title_woman) {
        _m_title_woman = [CWUBTextInfo new];

    }
    return _m_title_woman;
}

@end
