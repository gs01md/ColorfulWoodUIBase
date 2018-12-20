//
//  CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model.h"

@implementation CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model

- (CWUBImageInfo*) m_back{

    if (!_m_back) {
        _m_back = [CWUBImageInfo new];
    }

    return _m_back;
}

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

- (CWUBTextInfo*) m_title_bottomLeft{

    if (!_m_title_bottomLeft) {
        _m_title_bottomLeft = [CWUBTextInfo new];
    }

    return _m_title_bottomLeft;
}

- (CWUBTextInfo*) m_title_bottomCenter{

    if (!_m_title_bottomCenter) {
        _m_title_bottomCenter = [CWUBTextInfo new];
    }

    return _m_title_bottomCenter;
}

- (CWUBImageInfo*) m_img_bottomRight{

    if (!_m_img_bottomRight) {
        _m_img_bottomRight = [CWUBImageInfo new];
    }

    return _m_img_bottomRight;
}

@end
