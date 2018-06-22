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

        if (info.m_cornerInfo.m_cornerRadius>0 && info.m_cornerInfo.m_cornerWidth>0) {

            self.layer.cornerRadius = info.m_cornerInfo.m_cornerRadius;
            self.layer.borderWidth = info.m_cornerInfo.m_cornerWidth;
            self.layer.borderColor = [info.m_cornerInfo.m_cornerColor CGColor];
            self.layer.masksToBounds = YES;

        }else{

            self.layer.cornerRadius = 0.;
            self.layer.borderWidth = 0.;
            self.layer.borderColor = [[UIColor clearColor] CGColor];
            self.layer.masksToBounds = NO;
        }

        self.numberOfLines = info.m_numberOfLines;
        self.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;

        if (info.m_color_backGroud) {
            self.backgroundColor = info.m_color_backGroud;
        }

    }
}


@end
