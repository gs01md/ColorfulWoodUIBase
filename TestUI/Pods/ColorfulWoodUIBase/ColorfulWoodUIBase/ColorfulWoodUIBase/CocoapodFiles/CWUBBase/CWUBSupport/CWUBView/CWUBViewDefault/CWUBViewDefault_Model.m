//
//  CWUBViewDefault_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/28.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBViewDefault_Model.h"

@implementation CWUBViewDefault_Model

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
