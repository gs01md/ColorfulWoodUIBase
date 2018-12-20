//
//  CWUBCell_TitleLeft_InfoRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InfoRight_Model.h"

@implementation CWUBCell_TitleLeft_InfoRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InfoRight;
    }

    return self;
}

-(CWUBTextInfo*)m_title{
    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }
    return _m_title;
}

-(CWUBTextInfo*)m_info{
    if (!_m_info) {
        _m_info = [CWUBTextInfo new];
    }
    return _m_info;
}
@end
