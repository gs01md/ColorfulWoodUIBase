//
//  TitleTop_TitleBottom_ImgRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "TitleTop_TitleBottom_ImgRight_Model.h"

@implementation TitleTop_TitleBottom_ImgRight_Model

- (CWUBTextInfo *)m_titleTop{

    if (!_m_titleTop) {
        _m_titleTop = [CWUBTextInfo new];
    }

    return _m_titleTop;
}

- (CWUBTextInfo *)m_titleBottom{

    if (!_m_titleBottom) {
        _m_titleBottom = [CWUBTextInfo new];
    }

    return _m_titleBottom;
}

- (CWUBImageInfo *)m_imgRight{

    if (!_m_imgRight) {
        _m_imgRight = [CWUBImageInfo new];
    }

    return _m_imgRight;
}

- (float)m_width{

    if (_m_width < 1) {
        _m_width = CWUBDefineDeviceWidth/4.;
    }

    return _m_width;
}

- (float)m_height{

    if (_m_height < 1) {
        _m_height = CWUBDefine_Width(45.);
    }

    return _m_height;
}


@end
