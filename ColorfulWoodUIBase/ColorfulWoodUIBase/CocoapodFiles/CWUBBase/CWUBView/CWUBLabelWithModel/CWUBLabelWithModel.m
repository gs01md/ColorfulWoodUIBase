//
//  CWUBLabelWithModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBLabelWithModel.h"

@implementation CWUBLabelWithModel

-(instancetype)initWithModel:(CWUBTextInfo*)model{

    if (self = [super init]) {
        [self interface_update:model];
    }

    return self;
}

-(void) interface_update:(CWUBTextInfo*)model{

    self.m_model = model;
    self.text = @"";
    if (model) {

        self.text = model.m_text?model.m_text:@"";

        if (model.m_font) {
            self.font = model.m_font;
        }

        if (model.m_color) {
            self.textColor = model.m_color;
        }

        if (model.m_cornerInfo.m_cornerRadius>0 && model.m_cornerInfo.m_cornerWidth>0) {

            self.layer.cornerRadius = model.m_cornerInfo.m_cornerRadius;
            self.layer.borderWidth = model.m_cornerInfo.m_cornerWidth;
            self.layer.borderColor = [model.m_cornerInfo.m_cornerColor CGColor];
            self.layer.masksToBounds = YES;

        }else{

            self.layer.cornerRadius = 0.;
            self.layer.borderWidth = 0.;
            self.layer.borderColor = [[UIColor clearColor] CGColor];
            self.layer.masksToBounds = NO;
        }

        self.numberOfLines = model.m_numberOfLines;
        self.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;

        /*
        switch (self.m_model.m_labelTextHorizontalType) {
            case CWUBLabelTextHorizontalType_left:
                self.textAlignment = CWUBLabelTextHorizontalType_left;
                break;
            case CWUBLabelTextHorizontalType_right:
                self.textAlignment = CWUBLabelTextHorizontalType_right;
                break;

            default:
                self.textAlignment = CWUBLabelTextHorizontalType_center;
                break;
        }
         */

        if (model.m_color_backGroud) {
            self.backgroundColor = model.m_color_backGroud;
        }

        self.hidden = model.m_isHidden;

    }
}




@end
