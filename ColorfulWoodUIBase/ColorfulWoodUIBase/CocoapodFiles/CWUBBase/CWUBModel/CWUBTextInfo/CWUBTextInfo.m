//
//  CWUBTextInfo.m
//  ColorfulWoodUIBase
//  文字及字体、颜色等信息
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBTextInfo.h"
#import "CWUBDefine.h"

@implementation CWUBTextInfo

-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color{

    if (self = [super init]) {

        self.m_text = text?text:@"";
        self.m_font = font;
        self.m_color = color;
    }

    return self;
}

-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color width:(float)width{

    if (self = [super init]) {

        self.m_text = text?text:@"";
        self.m_font = font;
        self.m_color = color;
        self.m_width = width;
    }

    return self;
}


-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color backColor:(UIColor*)backColor{

    if (self = [super init]) {

        self.m_text = text?text:@"";
        self.m_font = font;
        self.m_color = color;
        self.m_color_backGroud = backColor;
    }

    return self;
}


-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color holder:(NSString*)holder{

    if (self = [super init]) {

        self.m_text = text?text:@"";
        self.m_font = font;
        self.m_color = color;
        self.m_textPlaceholder = holder;
    }

    return self;
}

+ (instancetype)interface_nullCheckInit:(CWUBTextInfo*)info{

    if (!info) {
        info = [CWUBTextInfo new];
    }

    return info;
}

- (NSString*)m_text{

    if (!_m_text) {
        _m_text = @"";
    }

    return _m_text;
}

- (NSString*)m_textPlaceholder{

    if (!_m_textPlaceholder) {
        _m_textPlaceholder = @"";
    }

    return _m_textPlaceholder;
}

- (int)m_numberOfLines{

    if (_m_numberOfLines<0) {
        _m_numberOfLines = 0;
    }

    return _m_numberOfLines;
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

- (UIColor*)m_color_backGroud{

    if (!_m_color_backGroud) {
        _m_color_backGroud = [CWUBDefine colorBlueDeep];
    }

    return _m_color_backGroud;
}

- (CWUBCornerInfo*)m_cornerInfo{

    if (!_m_cornerInfo) {
        _m_cornerInfo = [CWUBCornerInfo new];
    }

    return _m_cornerInfo;
}

- (float)m_height{

    if (_m_height <= 0) {
        _m_height = 1.;
    }

    return _m_height;
}

/**
 * 根据内容设置宽度，适合单行的标题
 */
- (float)interface_setWidthByContent{

    NSDictionary *attrs=@{NSFontAttributeName:self.m_font};
    CGSize mySize=[self.m_text sizeWithAttributes:attrs];
    self.m_width = mySize.width;

    return self.m_width;
}
@end
