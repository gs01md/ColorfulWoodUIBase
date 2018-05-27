//
//  CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model.h"

@implementation CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model
- (CWUBImageInfo*) m_back{

    if (!_m_back) {
        _m_back = [CWUBImageInfo new];
    }

    return _m_back;
}

- (CWUBTextInfo*) m_title_leftTop{

    if (!_m_title_leftTop) {
        _m_title_leftTop = [CWUBTextInfo new];
    }

    return _m_title_leftTop;
}

- (CWUBTextInfo*) m_title_leftBottom{

    if (!_m_title_leftBottom) {
        _m_title_leftBottom = [CWUBTextInfo new];
    }

    return _m_title_leftBottom;
}

- (CWUBImageInfo*) m_img_center{

    if (!_m_img_center) {
        _m_img_center = [CWUBImageInfo new];
    }

    return _m_img_center;
}

- (CWUBTextInfo*) m_title_rightTop{

    if (!_m_title_rightTop) {
        _m_title_rightTop = [CWUBTextInfo new];
    }

    return _m_title_rightTop;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}
@end
