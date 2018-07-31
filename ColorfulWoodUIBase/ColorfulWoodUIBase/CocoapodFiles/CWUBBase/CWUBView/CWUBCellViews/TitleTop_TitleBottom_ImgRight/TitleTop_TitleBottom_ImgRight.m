//
//  TitleTop_TitleBottom_ImgRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "TitleTop_TitleBottom_ImgRight.h"

@interface TitleTop_TitleBottom_ImgRight()

@property(nonatomic, strong)CWUBLabelWithModel *m_lbl_top;
@property(nonatomic, strong)CWUBLabelWithModel *m_lbl_bottom;
@property(nonatomic, strong)CWUBImageViewWithModel *m_img_right;

@end

@implementation TitleTop_TitleBottom_ImgRight

- (void)inner_initWithSubViews{

    [super inner_initWithSubViews];

    [self addSubview:self.m_lbl_top];
    [self addSubview:self.m_lbl_bottom];
    [self addSubview:self.m_img_right];

}

- (void)inner_updateConsrtains{

    [super inner_updateConsrtains];

    if ([self.m_model isKindOfClass:[TitleTop_TitleBottom_ImgRight_Model class]]) {

        TitleTop_TitleBottom_ImgRight_Model *model = (TitleTop_TitleBottom_ImgRight_Model*)self.m_model;

        [self.m_lbl_top mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(self).offset(model.m_titleTop.m_margin_top);
            make.bottom.equalTo(self.m_lbl_bottom.mas_top).offset(-model.m_titleTop.m_margin_bottom);
        }];

        [self.m_lbl_bottom mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(self.m_lbl_top.mas_bottom).offset(model.m_titleBottom.m_margin_top);
        }];

        [self.m_img_right mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self);
            make.width.equalTo(@(model.m_imgRight.m_width));
            make.height.equalTo(@(model.m_imgRight.m_height));
            make.centerY.equalTo(self);
        }];
    }
}

#pragma mark - 属性
- (CWUBLabelWithModel *)m_lbl_top{

    if (!_m_lbl_top) {
        _m_lbl_top = [CWUBLabelWithModel new];
    }
    return _m_lbl_top;
}

- (CWUBLabelWithModel *)m_lbl_bottom{

    if (!_m_lbl_bottom) {
        _m_lbl_bottom = [CWUBLabelWithModel new];
    }
    return _m_lbl_bottom;
}

- (CWUBImageViewWithModel *)m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageViewWithModel new];
    }
    return _m_img_right;
}

#pragma mark - 更新

- (void)interface_updateWithModel:(CWUBModelBase*)model{

    [super interface_updateWithModel:model];

    if (self.m_model && [self.m_model isKindOfClass:[TitleTop_TitleBottom_ImgRight_Model class]]) {
        [self inner_updateConsrtains];

        TitleTop_TitleBottom_ImgRight_Model *model = (TitleTop_TitleBottom_ImgRight_Model*)self.m_model;

        [self.m_lbl_top interface_update:model.m_titleTop];
        [self.m_lbl_bottom interface_update:model.m_titleBottom];
        [self.m_img_right interface_update:model.m_imgRight];
    }

}

@end
