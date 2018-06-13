//
//  CWUBCell_ImgCenter_TitleCenter_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/13.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgCenter_TitleCenter_Model.h"

@implementation CWUBCell_ImgCenter_TitleCenter_Model

- (CWUBImageInfo*) m_image{

    if (!_m_image) {
        _m_image = [CWUBImageInfo new];
    }

    return _m_image;
}

- (CWUBTextInfo*) m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }

    return _m_title;
}
@end
