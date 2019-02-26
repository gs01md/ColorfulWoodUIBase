//
//  CWUBLabelWithModel.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBLabelWithModel.h"
#import "CWUBAttributedTextInfo.h"


@interface CWUBLabelWithModel()
@property(nonatomic, strong)CWUBUITapGestureRecognizer *m_tap;
@end

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

        /**
         * 多样式属性文字
         */
        if ([model isKindOfClass:[CWUBAttributedTextInfo class]]) {

            CWUBAttributedTextInfo *modelAtrribute = (CWUBAttributedTextInfo *)model;
            self.attributedText = modelAtrribute.m_attributedText;

        } else {

            self.text = model.m_text?model.m_text:@"";

            if (model.m_font) {
                self.font = model.m_font;
            }

            if (model.m_color) {
                self.textColor = model.m_color;
            }
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

        if (model.m_color_backGround) {
            self.backgroundColor = model.m_color_backGround;
        }

        if (self.m_model.m_lblCanClick) {
            self.userInteractionEnabled = YES;
        } else {
            self.userInteractionEnabled = NO;
        }

        if (self.m_model.m_event_opt_code.length > 0) {
            self.userInteractionEnabled = YES;
            [self performSelector:@selector(func_setEvent) withObject:self.m_model.m_event_opt_code afterDelay:1.];
        }

        self.hidden = model.m_isHidden;

    }
}
#pragma mark - 属性
- (UIViewController *)m_controller{

    if(!_m_controller){
        _m_controller = [self inner_findViewController];
    }

    return _m_controller;
}


#pragma mark - 功能
/**
 * 设置该控件的点击事件
 */
- (void)func_setEvent{

    NSString * code = [self.m_model.m_event_opt_code stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if(code.length > 0 ){

        if(self.m_controller){
            self.m_tap = [[CWUBUITapGestureRecognizer alloc] initWithTarget:self.m_controller action:@selector(CWUBLabel_clickEvent:)];
            self.m_tap.m_event_opt_code = code;
            [self addGestureRecognizer:self.m_tap];
        }

    }

}

/**
 * 不执行，因为在 self.m_controller 中执行
 */
- (void)CWUBLabel_clickEvent:(UITapGestureRecognizer*)tap{
    NSLog(@"消除警告");
}

/**
 * 获取控制器，获取视图控制器
 */
- (UIViewController *)inner_findViewController{

    for (UIView* next = self; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}


#pragma mark - 接口

/**
 * 获取点击事件对应Label的标识
 */
+ (NSString *)interface_getEventCode:(UITapGestureRecognizer*)tap{

    NSString * code = @"";

    if(tap && [tap isKindOfClass:[UITapGestureRecognizer class]] && [tap.view isKindOfClass:[CWUBLabelWithModel class]]){
        CWUBLabelWithModel * label =  (CWUBLabelWithModel *)tap.view;

        if(label){
            code = label.m_model.m_event_opt_code;
        }
    }

    return code;
}

@end
