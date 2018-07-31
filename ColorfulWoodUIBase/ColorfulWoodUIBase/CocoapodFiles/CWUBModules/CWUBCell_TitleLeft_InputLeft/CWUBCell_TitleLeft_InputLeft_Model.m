//
//  CWUBCell_TitleLeft_InputLeft_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputLeft_Model.h"

@implementation CWUBCell_TitleLeft_InputLeft_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InputLeft;
    }

    return self;
}

- (CWUBTextInfo*) m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }

    return _m_title;
}

- (CWUBTextInfo*) m_input{

    if (!_m_input) {
        _m_input = [CWUBTextInfo new];
    }

    return _m_input;
}
@end
