//
//  CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/11.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model.h"

@implementation CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model

- (CWUBImageInfo*) m_img_left{

    if (!_m_img_left) {
        _m_img_left = [CWUBImageInfo new];
    }

    return _m_img_left;
}

- (CWUBTextInfo*) m_title_rightTopLeft{

    if (!_m_title_rightTopLeft) {
        _m_title_rightTopLeft = [CWUBTextInfo new];
    }

    return _m_title_rightTopLeft;
}

- (CWUBTextInfo*) m_title_rightTopRight{

    if (!_m_title_rightTopRight) {
        _m_title_rightTopRight = [CWUBTextInfo new];
    }

    return _m_title_rightTopRight;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}
@end
