//
//  CWUBCell_ButtonLeft_TitleLeft_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ButtonLeft_TitleLeft_Model.h"
#import "CWUBDefine.h"

@implementation CWUBCell_ButtonLeft_TitleLeft_Model
-(float)m_iconWidth{

    if (_m_iconWidth<=0) {
        _m_iconWidth = CWUBBaseViewConfig_Width_Icon_Little;
    }

    return _m_iconWidth;
}
@end
