//
//  CWUBCell_TitleLeft_SwithRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_SwithRight_Model.h"
#import "CWUBDefine.h"

@implementation CWUBCell_TitleLeft_SwithRight_Model
- (UIColor *) m_color_swith{

    if (!_m_color_swith) {
        _m_color_swith = [CWUBDefine colorBlueDeep];
    }
    return _m_color_swith;
}
@end
