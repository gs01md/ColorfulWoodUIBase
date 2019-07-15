//
//  CWUBLabelVertical.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/4/16.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBLabelVerticalWithModel.h"
#import <Masonry/Masonry.h>

@interface CWUBLabelVerticalWithModel()

@property(nonatomic, strong)CWUBUITapGestureRecognizer *m_tap;
@property(nonatomic, strong)CWUBLabelWithModel* m_label;

@end

@implementation CWUBLabelVerticalWithModel

-(instancetype)init{

    if (self = [super init]) {
        [self addSubview:self.m_label];
    }

    return self;
}

-(instancetype)initWithModel:(CWUBTextInfo*)model{

    if (self = [super init]) {
        [self addSubview:self.m_label];
        [self interface_update:model];
    }

    return self;
}

-(void) interface_update:(CWUBTextInfo*)model{

    self.m_model = model;

    [self.m_label interface_update:self.m_model isBorder:NO];

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

    /**
     * 背景
     */
    if (model.m_color_backGround) {
        self.backgroundColor = model.m_color_backGround;
    }else{
        self.backgroundColor = [UIColor clearColor];
    }

    [self.m_label mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.mas_equalTo(self);
        make.right.mas_equalTo(self);


        switch (self.m_model.m_labelTextVerticalType) {
            case CWUBLabelTextVerticalType_top:
                make.top.mas_equalTo(self);

                break;

            case CWUBLabelTextVerticalType_bottom:
                make.bottom.mas_equalTo(self);

                break;

            default:
                make.centerY.mas_equalTo(self);
                break;
        }
    }];


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
- (void)CWUBLabel_clickEvent:(CWUBUITapGestureRecognizer*)tap{
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

#pragma mark - 属性
- (UIViewController *)m_controller{

    if(!_m_controller){
        _m_controller = [self inner_findViewController];
    }

    return _m_controller;
}

- (CWUBLabelWithModel *) m_label{

    if (!_m_label) {
        _m_label = [CWUBLabelWithModel new];
    }

    return _m_label;
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
