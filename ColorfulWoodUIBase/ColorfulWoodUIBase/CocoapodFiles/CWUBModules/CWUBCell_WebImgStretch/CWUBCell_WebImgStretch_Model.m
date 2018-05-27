//
//  CWUBCell_WebImgStretch_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/26.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_WebImgStretch_Model.h"

@implementation CWUBCell_WebImgStretch_Model
- (CWUBImageInfo*) m_image{

    if (!_m_image) {
        _m_image = [CWUBImageInfo new];
    }

    return _m_image;
}
@end
