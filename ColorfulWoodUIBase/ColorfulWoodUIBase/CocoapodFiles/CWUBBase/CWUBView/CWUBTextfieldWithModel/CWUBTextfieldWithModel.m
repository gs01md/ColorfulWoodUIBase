//
//  CWUBTextfieldWithModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBTextfieldWithModel.h"


@interface CWUBTextfieldWithModel()
@property(nonatomic, strong)CWUBTextInfo* m_info;
@end

@implementation CWUBTextfieldWithModel

-(instancetype)initWithModel:(CWUBTextInfo*)info{

    if (self = [super init]) {
        [self interface_update:info];
    }

    return self;
}

-(void) interface_update:(CWUBTextInfo*)info{

    self.m_info = info;
    self.text = @"";
    if (info) {

        self.text = info.m_text?info.m_text:@"";

        if (info.m_font) {
            self.font = info.m_font;
        }

        if (info.m_color) {
            self.textColor = info.m_color;
        }

        if (info.m_textPlaceholder) {
            self.placeholder = info.m_textPlaceholder;
        }

        self.hidden = info.m_isHidden;
    }
}


@end
