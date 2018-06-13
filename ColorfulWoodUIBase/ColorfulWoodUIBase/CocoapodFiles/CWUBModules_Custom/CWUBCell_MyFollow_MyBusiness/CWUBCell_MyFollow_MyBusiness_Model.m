//
//  CWUBCell_MyFollow_MyBusiness_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_MyFollow_MyBusiness_Model.h"

@implementation CWUBCell_MyFollow_MyBusiness_Model

- (CWUBTextInfo*) m_title_left_top{

    if (!_m_title_left_top) {
        _m_title_left_top = [CWUBTextInfo new];
    }

    return _m_title_left_top;
}

- (CWUBImageInfo*) m_img_left_bottom{

    if (!_m_img_left_bottom) {
        _m_img_left_bottom = [CWUBImageInfo new];
    }

    return _m_img_left_bottom;
}

- (CWUBTextInfo*) m_title_left_bottom{

    if (!_m_title_left_bottom) {
        _m_title_left_bottom = [CWUBTextInfo new];
    }

    return _m_title_left_bottom;
}

- (CWUBTextInfo*) m_title_right_top{

    if (!_m_title_right_top) {
        _m_title_right_top = [CWUBTextInfo new];
    }

    return _m_title_right_top;
}

- (CWUBImageInfo*) m_img_right_bottom{

    if (!_m_img_right_bottom) {
        _m_img_right_bottom = [CWUBImageInfo new];
    }

    return _m_img_right_bottom;
}

- (CWUBTextInfo*) m_title_right_bottom{

    if (!_m_title_right_bottom) {
        _m_title_right_bottom = [CWUBTextInfo new];
    }

    return _m_title_right_bottom;
}

@end
