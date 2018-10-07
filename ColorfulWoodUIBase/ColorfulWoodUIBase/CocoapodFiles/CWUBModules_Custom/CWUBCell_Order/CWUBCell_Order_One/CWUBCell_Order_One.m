//
//  CWUBCell_Order_One.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/25.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Order_One.h"

@interface CWUBCell_Order_One()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_one;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_two;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_three;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_four;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_five;



@end

@implementation CWUBCell_Order_One

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Order_One_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_Order_One_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_Order_One_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self func_initWithSubViews];
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_one];
    [self addSubview:self.m_lbl_two];
    [self addSubview:self.m_lbl_three];
    [self addSubview:self.m_lbl_four];
    [self addSubview:self.m_lbl_five];

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_one mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_title_one.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_title_one.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_one.m_margin_right);
        if (self.m_model.m_title_one.m_height > 1) {
            make.height.equalTo(@(self.m_model.m_title_one.m_height));
        }
        make.bottom.equalTo(self.m_lbl_two.mas_top).offset(-self.m_model.m_title_one.m_margin_bottom);

    }];

    [_m_lbl_two mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_one.mas_bottom).offset(self.m_model.m_title_two.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_title_two.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_two.m_margin_right);
        if (self.m_model.m_title_two.m_height > 1) {
            make.height.equalTo(@(self.m_model.m_title_two.m_height));
        }
        make.bottom.equalTo(self.m_lbl_three.mas_top).offset(-self.m_model.m_title_two.m_margin_bottom);
    }];

    [_m_lbl_three mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_two.mas_bottom).offset(self.m_model.m_title_three.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_title_three.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_three.m_margin_right);
        if (self.m_model.m_title_three.m_height > 1) {
            make.height.equalTo(@(self.m_model.m_title_three.m_height));
        }
        make.bottom.equalTo(self.m_lbl_five.mas_top).offset(-self.m_model.m_title_three.m_margin_bottom);
    }];

    [_m_lbl_four mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_two);
        make.right.equalTo(self).offset(-self.m_model.m_title_four.m_margin_right);
        if (self.m_model.m_title_four.m_height > 1) {
            make.height.equalTo(@(self.m_model.m_title_four.m_height));
        }
        if (self.m_model.m_title_four.m_width > 1) {
            make.width.equalTo(@(self.m_model.m_title_four.m_width));
        }
    }];

    [_m_lbl_five mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_three.mas_bottom).offset(self.m_model.m_title_five.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_title_five.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_five.m_margin_right);
        if (self.m_model.m_title_five.m_height > 1) {
            make.height.equalTo(@(self.m_model.m_title_five.m_height));
        }
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_five.m_margin_bottom);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_five.mas_bottom).offset(self.m_model.m_title_five.m_margin_bottom);
    }];
}

#pragma mark - 属性
- (CWUBCell_Order_One_Model*)m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Order_One_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_one{

    if (!_m_lbl_one) {
        _m_lbl_one = [CWUBLabelWithModel new];
        _m_lbl_one.backgroundColor = self.m_model.m_title_one.m_color_backGround;
    }
    return _m_lbl_one;
}

- (CWUBLabelWithModel *)m_lbl_two{

    if (!_m_lbl_two) {
        _m_lbl_two = [CWUBLabelWithModel new];
        _m_lbl_two.backgroundColor = self.m_model.m_title_two.m_color_backGround;
    }
    return _m_lbl_two;
}

- (CWUBLabelWithModel *)m_lbl_three{

    if (!_m_lbl_three) {
        _m_lbl_three = [CWUBLabelWithModel new];
        _m_lbl_three.backgroundColor = self.m_model.m_title_three.m_color_backGround;
    }
    return _m_lbl_three;
}

- (CWUBLabelWithModel *)m_lbl_four{

    if (!_m_lbl_four) {
        _m_lbl_four = [CWUBLabelWithModel new];
        _m_lbl_four.backgroundColor = self.m_model.m_title_four.m_color_backGround;
    }
    return _m_lbl_four;
}

- (CWUBLabelWithModel *)m_lbl_five{

    if (!_m_lbl_five) {
        _m_lbl_five = [CWUBLabelWithModel new];
        _m_lbl_five.backgroundColor = self.m_model.m_title_five.m_color_backGround;
        _m_lbl_five.textAlignment = NSTextAlignmentRight;
    }
    return _m_lbl_five;
}

- (void) interface_updateWithModel:(CWUBCell_Order_One_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;

    [self.m_lbl_one interface_update:self.m_model.m_title_one];
    [self.m_lbl_two interface_update:self.m_model.m_title_two];
    [self.m_lbl_three interface_update:self.m_model.m_title_three];
    [self.m_lbl_four interface_update:self.m_model.m_title_four];
    [self.m_lbl_five interface_update:self.m_model.m_title_five];

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

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}


@end
