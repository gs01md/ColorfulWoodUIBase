//
//  CWUBTextView.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/2.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBTextView.h"
#import <Masonry/Masonry.h>
#import "CWUBDefine.h"

@interface CWUBTextView()
@property(nonatomic, strong)CWUBTextInfo* m_model;
@property(nonatomic, strong)UILabel* m_placeholder;
@end

@implementation CWUBTextView

-(instancetype)initWithModel:(CWUBTextInfo*)model{

    if (self = [super init]) {
        [self interface_update:model];

        [self addSubview:self.m_placeholder];

        if (self.m_placeholder.superview != NULL) {
            [self.m_placeholder mas_remakeConstraints:^(MASConstraintMaker *make) {
                make.left.top.bottom.equalTo(self);
                if (self.m_placeholder.superview.superview != NULL) {
                    make.right.equalTo(self.m_placeholder.superview.superview).offset(-self.m_model.m_margin_right);
                }

            }];
        }
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
            self.m_placeholder.font = model.m_font;
        }

        if (model.m_color) {
            self.textColor = model.m_color;
        }

        if (model.m_textPlaceholder) {
            self.m_placeholder.text = model.m_textPlaceholder;
        }

        if (self.text.length > 0) {
            [self.m_placeholder setHidden:YES];
        }else{
            [self.m_placeholder setHidden:NO];
        }

        self.hidden = model.m_isHidden;

        //self.enabled = !model.m_noEnabled;

        switch (self.m_model.m_labelTextHorizontalType) {

            case CWUBLabelTextHorizontalType_left:
                self.textAlignment = NSTextAlignmentLeft;
                self.m_placeholder.textAlignment = NSTextAlignmentLeft;
                break;

            case CWUBLabelTextHorizontalType_right:
                self.textAlignment = NSTextAlignmentRight;
                self.m_placeholder.textAlignment = NSTextAlignmentRight;
                break;

            case CWUBLabelTextHorizontalType_center:
                self.textAlignment = NSTextAlignmentCenter;
                self.m_placeholder.textAlignment = NSTextAlignmentCenter;
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

        if (self.m_placeholder.superview != NULL) {
            [self.m_placeholder mas_remakeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(4);
                make.top.bottom.equalTo(self);
                if (self.m_placeholder.superview.superview != NULL) {
                    make.right.equalTo(self.m_placeholder.superview.superview).offset(-self.m_model.m_margin_right);
                }
            }];
        }

    }
}

- (UILabel*) m_placeholder{

    if (!_m_placeholder) {
        _m_placeholder = [UILabel new];
        _m_placeholder.textColor = CWUBDefineCreate_Color(200, 200, 200, 1);
        _m_placeholder.font = self.m_model.m_font;
        _m_placeholder.numberOfLines = 0;
    }

    return _m_placeholder;
}

@end
