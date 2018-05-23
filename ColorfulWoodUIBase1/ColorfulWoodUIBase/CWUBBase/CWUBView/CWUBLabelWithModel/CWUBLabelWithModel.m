//
//  CWUBLabelWithModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBLabelWithModel.h"

@interface CWUBLabelWithModel()
@property(nonatomic, strong)CWUBTextInfo* m_info;
@end

@implementation CWUBLabelWithModel

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

    }
}


@end
