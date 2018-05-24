//
//  CWUBCell_TitleLeft_ButtonRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_ButtonRight_Model.h"

@implementation CWUBCell_TitleLeft_ButtonRight_Model
- (CWUBTextInfo*) m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }

    return _m_title;
}

- (CWUBImageInfo*) m_btnImg{

    if (!_m_btnImg) {
        _m_btnImg = [CWUBImageInfo new];
    }

    return _m_btnImg;
}
@end
