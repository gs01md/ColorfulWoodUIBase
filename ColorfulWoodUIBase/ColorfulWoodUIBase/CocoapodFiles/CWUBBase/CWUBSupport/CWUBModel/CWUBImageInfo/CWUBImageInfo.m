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

- (UIColor*)m_color_backGround{

    if (!_m_color_backGround) {
        _m_color_backGround = [UIColor clearColor];
    }

    return _m_color_backGround;
}

- (CWUBCornerInfo*)m_cornerInfo{

    if (!_m_cornerInfo) {
        _m_cornerInfo = [CWUBCornerInfo new];
    }

    return _m_cornerInfo;
}

- (float)m_width{

    if (!_m_width || _m_width<=0) {

        _m_width = CWUBImageInfo_defaultSize;
    }

    return _m_width;
}

- (float)m_height{

    if (!_m_height || _m_height<=0) {

        _m_height = CWUBImageInfo_defaultSize;
    }

    return _m_height;
}

- (NSString *)m_event_opt_code{

    if (!_m_event_opt_code) {
        _m_event_opt_code = @"";
    }
    return _m_event_opt_code;
}
@end
