//
//  CWUBImageInfo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBImageInfo.h"

@implementation CWUBImageInfo

- (instancetype) initWithName:(NSString*)name width:(float)width height:(float)height{

    if (self = [super init]) {
        self.m_imgName = name;
        self.m_width = width;
        self.m_height = height;
    }

    return self;
}

/**
 * 网络图片，宽度铺满，高度按比例
 */
- (instancetype) initWithName:(NSString*)name defaultName:(NSString*)defaultName{

    if (self = [super init]) {
        self.m_imgName = name;
        self.m_defaultName = defaultName;
    }

    return self;
}

- (NSString*)m_imgName{

    if (!_m_imgName) {
        _m_imgName = @"";
    }

    return _m_imgName;
}

- (NSString*)m_defaultName{

    if (!_m_defaultName) {
        _m_defaultName = @"";
    }

    return _m_defaultName;
}

- (float)m_width{

    if (!_m_width || _m_width<=0) {

        _m_width = 16.;
    }

    return _m_width;
}

- (float)m_height{

    if (!_m_height || _m_height<=0) {

        _m_height = 16.;
    }

    return _m_height;
}
@end
