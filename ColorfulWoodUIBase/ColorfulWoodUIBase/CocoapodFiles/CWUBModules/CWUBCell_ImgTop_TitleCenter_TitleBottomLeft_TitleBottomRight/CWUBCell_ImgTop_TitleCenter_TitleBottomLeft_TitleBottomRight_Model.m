//
//  CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model.h"

@implementation CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model

- (CWUBImageInfo*) m_img_top{

    if (!_m_img_top) {
        _m_img_top = [CWUBImageInfo new];
    }

    return _m_img_top;
}

- (CWUBTextInfo*) m_title_center{

    if (!_m_title_center) {
        _m_title_center = [CWUBTextInfo new];
    }

    return _m_title_center;
}

- (CWUBTextInfo*) m_title_bottom_left{

    if (!_m_title_bottom_left) {
        _m_title_bottom_left = [CWUBTextInfo new];
    }

    return _m_title_bottom_left;
}

- (CWUBTextInfo*) m_title_bottom_right{

    if (!_m_title_bottom_right) {
        _m_title_bottom_right = [CWUBTextInfo new];
    }

    return _m_title_bottom_right;
}
@end
