//
//  CWUBCell_TitleLeft_InfoLeft_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InfoLeft_Model.h"
#import "CWUBDefine.h"

@implementation CWUBCell_TitleLeft_InfoLeft_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InfoLeft;
    }

    return self;
}

- (float)m_titleWidth{

    if(!_m_titleWidth){
        _m_titleWidth = CWUBBaseViewConfig_Width_Title_Default;

    }
    return _m_titleWidth;
}
@end
