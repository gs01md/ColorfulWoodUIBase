//
//  CWUBView_TitleLeft_ButtonRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBView_TitleLeft_ButtonRight_Model.h"

@implementation CWUBView_TitleLeft_ButtonRight_Model

- (instancetype) initWithTitle:(CWUBTextInfo*)title img:(CWUBImageInfo*)img{

    if (self = [super init]) {

        self.m_title = title;
        self.m_img = img;
    }

    return self;
}

- (CWUBTextInfo*)m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }
    return _m_title;
}

- (CWUBImageInfo*)m_img {

    if (!_m_img) {
        _m_img = [CWUBImageInfo new];
    }
    return _m_img;
}

@end
