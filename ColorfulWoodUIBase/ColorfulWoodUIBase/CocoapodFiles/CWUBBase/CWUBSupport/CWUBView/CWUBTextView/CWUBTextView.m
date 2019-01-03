//
//  CWUBTextView.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/2.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBTextView.h"

@interface CWUBTextView()
@property(nonatomic, strong)CWUBTextInfo* m_info;
@end

@implementation CWUBTextView

-(instancetype)initWithModel:(CWUBTextInfo*)info{

    if (self = [super init]) {
        [self interface_update:info];
    }

    return self;
}

-(void) interface_update:(CWUBTextInfo*)info{

    /**
     * 默认不能滚动
     */
    self.scrollEnabled = info.m_textView_scroll;

    /**
     * 不要内边距
     */
    self.textContainerInset = UIEdgeInsetsZero;

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
            //self.placeholder = info.m_textPlaceholder;
        }

        self.hidden = info.m_isHidden;

        //self.enabled = !info.m_noEnabled;

        switch (self.m_info.m_labelTextHorizontalType) {

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

        self.keyboardType = self.m_info.m_keyboard.m_keyBoardType;
        self.keyboardAppearance = self.m_info.m_keyboard.m_keyboardAppearance;
        self.autocapitalizationType = self.m_info.m_keyboard.m_autocapitalizationType;
        self.autocorrectionType = self.m_info.m_keyboard.m_autocorrectionType;
        self.secureTextEntry = self.m_info.m_keyboard.m_secureTextEntry;
    }
}


@end
