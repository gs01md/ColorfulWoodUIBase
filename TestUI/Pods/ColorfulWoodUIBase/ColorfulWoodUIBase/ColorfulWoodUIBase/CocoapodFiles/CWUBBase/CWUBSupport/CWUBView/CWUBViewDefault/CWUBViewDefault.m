//
//  CWUBViewDefault.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/28.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBViewDefault.h"
#import "CWUBImageViewWithModel.h"
#import "CWUBLabelWithModel.h"
#import <Masonry/Masonry.h>

@interface CWUBViewDefault()

@property(nonatomic, strong)CWUBImageViewWithModel *m_image;
@property(nonatomic, strong)CWUBLabelWithModel *m_title;

@end

@implementation CWUBViewDefault

- (instancetype) init{

    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
    }

    return self;
}

- (instancetype) initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }

    return self;
}

- (instancetype) initWithModel:(CWUBViewDefault_Model*)model{

    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBViewDefault_Model*)model{

    self.m_model = model;
    [self func_initWithSubViews];

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_clickThis)];

    [self addGestureRecognizer:tap];
}

- (void)func_initWithSubViews{

    [self addSubview:self.m_image];
    [self addSubview:self.m_title];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_image mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self).offset(self.m_model.m_image.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_image.m_margin_right);

        if (self.m_model.m_image.m_height>1) {
            make.height.equalTo(@(self.m_model.m_image.m_height));
        }

        if (self.m_model.m_image.m_width>1) {
            make.height.equalTo(@(self.m_model.m_image.m_width));
        }

        make.centerY.equalTo(self).offset(self.m_model.m_image.m_margin_CenterY);
    }];

    [_m_title mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self).offset(self.m_model.m_title.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title.m_margin_right);

        make.top.equalTo(self.m_image.mas_bottom).offset(self.m_model.m_title.m_margin_top);
    }];

}

#pragma mark - 属性

-(CWUBImageViewWithModel*) m_image{

    if (!_m_image) {

        _m_image = [[CWUBImageViewWithModel alloc] initWithModel:self.m_model.m_image];
    }

    return _m_image;
}

-(CWUBLabelWithModel*) m_title{

    if (!_m_title) {
        
        _m_title = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title];
        _m_title.textAlignment = NSTextAlignmentCenter;
        _m_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_title.numberOfLines = 0;
    }

    return _m_title;
}

#pragma mark - 接口

- (void) interface_updateWithModel:(CWUBViewDefault_Model*)model{

    self.m_model = model;

    [self.m_title interface_update:self.m_model.m_title];
    [self.m_image interface_update:self.m_model.m_image];

    [self func_updateConsrtains];

}

#pragma mark - 事件，点击本视图时触发
- (void)event_clickThis{

    if ([self.delegate respondsToSelector:@selector(CWUBViewDefault_Delegate_click)]) {

        [self.delegate CWUBViewDefault_Delegate_click];
    }
}

@end
