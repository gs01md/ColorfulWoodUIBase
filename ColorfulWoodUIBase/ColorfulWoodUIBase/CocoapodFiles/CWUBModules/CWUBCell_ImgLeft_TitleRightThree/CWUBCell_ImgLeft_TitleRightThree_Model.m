//
//  CWUBCell_ImgLeft_TitleRightThree_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgLeft_TitleRightThree_Model.h"

@implementation CWUBCell_ImgLeft_TitleRightThree_Model

- (CWUBImageInfo*) m_back{

    if (!_m_back) {
        _m_back = [CWUBImageInfo new];
    }

    return _m_back;
}

- (CWUBImageInfo*) m_img_left{

    if (!_m_img_left) {
        _m_img_left = [CWUBImageInfo new];
    }

    return _m_img_left;
}

- (CWUBTextInfo*) m_title_rightTop{

    if (!_m_title_rightTop) {
        _m_title_rightTop = [CWUBTextInfo new];
    }

    return _m_title_rightTop;
}

- (CWUBTextInfo*) m_title_rightCenter{

    if (!_m_title_rightCenter) {
        _m_title_rightCenter = [CWUBTextInfo new];
    }

    return _m_title_rightCenter;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}
@end
