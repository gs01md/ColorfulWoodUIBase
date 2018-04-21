//
//  CWUBButtonInfo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBButtonInfo.h"
#import "CWUBDefine.h"

@implementation CWUBButtonInfo
-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color background:(UIColor*)backgroundColor{

    if (self = [super init]) {

        self.m_text = text?text:@"";
        self.m_font = font;
        self.m_color = color;
        self.m_backgroundColor = backgroundColor;
    }

    return self;
}



- (UIFont*)m_font{

    if (!_m_font) {
        _m_font = [CWUBDefine fontBig_Regular];
    }

    return _m_font;
}

- (UIColor*)m_color{

    if (!_m_color) {
        _m_color = [CWUBDefine colorBlack];
    }

    return _m_color;
}

- (UIColor*)m_backgroundColor{

    if (!_m_backgroundColor) {
        _m_backgroundColor = [CWUBDefine colorBlueDeep];
    }

    return _m_backgroundColor;
}

@end
