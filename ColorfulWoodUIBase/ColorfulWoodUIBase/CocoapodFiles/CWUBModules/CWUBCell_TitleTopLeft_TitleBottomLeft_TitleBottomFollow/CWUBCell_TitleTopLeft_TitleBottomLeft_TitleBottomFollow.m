//
//  CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/11/23.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow.h"


@interface CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_topLeft;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottomLeft;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottomFollow;

@end

@implementation CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self func_initWithSubViews];
    }

    return self;
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_topLeft];
    [self addSubview:self.m_lbl_bottomLeft];
    [self addSubview:self.m_lbl_bottomFollow];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_topLeft mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title_topLeft.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_topLeft.m_margin_right);
        make.top.equalTo(self).offset(self.m_model.m_title_topLeft.m_margin_top);
    }];

    [_m_lbl_bottomLeft mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_topLeft.mas_bottom).offset(self.m_model.m_title_bottomLeft.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottomLeft.m_margin_bottom);
        make.left.equalTo(self.m_lbl_topLeft);
        make.right.equalTo(self.m_lbl_bottomFollow.mas_left).offset(-self.m_model.m_title_bottomLeft.m_margin_right);
    }];

    [_m_lbl_bottomFollow mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_bottomLeft);
        make.left.equalTo(self.m_lbl_bottomLeft.mas_right).offset(self.m_model.m_title_bottomLeft.m_margin_left);
        if (self.m_model.m_title_bottomFollow.m_width > 0) {
            make.width.mas_equalTo(self.m_model.m_title_bottomFollow.m_width);
        }
        if (self.m_model.m_title_bottomFollow.m_height > 0) {
            make.height.mas_equalTo(self.m_model.m_title_bottomFollow.m_height);
        }
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_bottomLeft.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

-(CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_topLeft{

    if (!_m_lbl_topLeft) {
        _m_lbl_topLeft = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_topLeft];
    }
    return _m_lbl_topLeft;
}

- (CWUBLabelWithModel *)m_lbl_bottomFollow{

    if (!_m_lbl_bottomFollow) {
        _m_lbl_bottomFollow = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottomFollow];
    }
    return _m_lbl_bottomFollow;
}

- (CWUBLabelWithModel *)m_lbl_bottomLeft{

    if (!_m_lbl_bottomLeft) {
        _m_lbl_bottomLeft = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottomLeft];
    }

    return _m_lbl_bottomLeft;
}

- (void) interface_updateWithModel:(CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;
    [self.m_lbl_bottomLeft interface_update:model.m_title_bottomLeft];
    [self.m_lbl_topLeft interface_update:model.m_title_topLeft];
    [self.m_lbl_bottomFollow interface_update:model.m_title_bottomFollow];
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }

    [self func_updateConsrtains];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}


#pragma mark - system

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}



@end
