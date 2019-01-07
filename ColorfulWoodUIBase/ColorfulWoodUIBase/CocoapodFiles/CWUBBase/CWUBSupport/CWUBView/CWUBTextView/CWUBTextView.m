//
//  CWUBTextView.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/2.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBTextView.h"

@interface CWUBTextView()
@property(nonatomic, strong)CWUBTextInfo* m_model;
@end

@implementation CWUBTextView

-(instancetype)initWithModel:(CWUBTextInfo*)model{

    if (self = [super init]) {
        [self interface_update:model];
    }

    return self;
}

-(void) interface_update:(CWUBTextInfo*)model{

    /**
     * 默认不能滚动
     */
    self.scrollEnabled = model.m_textView_scroll;

    /**
     * 不要内边距
     */
    self.textContainerInset = UIEdgeInsetsZero;

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

        if (model.m_textPlaceholder) {
            //self.placeholder = model.m_textPlaceholder;
        }

        self.hidden = model.m_isHidden;

        //self.enabled = !model.m_noEnabled;

        switch (self.m_model.m_labelTextHorizontalType) {

                case CWUBLabelTextHorizontalType_left:
                self.textAlignment = NSTextAlignmentLeft;
                break;

                case CWUBLabelTextHorizontalType_right:
                self.textAlignment = NSTextAlignmentRight;
                break;

                case CWUBLabelTextHorizontalType_center:
                self.textAlignment = NSTextAlignmentCenter;
                break;

            default:
                break;
        }

        self.keyboardType = self.m_model.m_keyboard.m_keyBoardType;
        self.keyboardAppearance = self.m_model.m_keyboard.m_keyboardAppearance;
        self.autocapitalizationType = self.m_model.m_keyboard.m_autocapitalizationType;
        self.autocorrectionType = self.m_model.m_keyboard.m_autocorrectionType;
        self.secureTextEntry = self.m_model.m_keyboard.m_secureTextEntry;

        if (self.m_model.m_canNotEdit) {
            [self setEditable:NO];
        } else {
            [self setEditable:YES];
        }
    }
}


@end
