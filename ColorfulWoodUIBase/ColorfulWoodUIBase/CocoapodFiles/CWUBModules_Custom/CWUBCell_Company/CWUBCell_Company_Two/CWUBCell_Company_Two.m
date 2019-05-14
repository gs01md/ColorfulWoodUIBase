//
//  CWUBCell_Company_Two.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/5/13.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Company_Two.h"

@interface CWUBCell_Company_Two()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_one;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_two;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_three;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_four;

@property (nonatomic, strong) CWUBImageViewWithModel * m_img_one;
@property (nonatomic, strong) CWUBImageViewWithModel * m_img_two;
@property (nonatomic, strong) CWUBImageViewWithModel * m_img_three;
@property (nonatomic, strong) CWUBImageViewWithModel * m_img_four;

@end

@implementation CWUBCell_Company_Two

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Company_Two_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_Company_Two_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_Company_Two_Model*)model{

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

    [self addSubview:self.m_img_one];
    [self addSubview:self.m_img_two];
    [self addSubview:self.m_img_three];
    [self addSubview:self.m_img_four];

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_img_one mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self);
        make.left.equalTo(self).offset(self.m_model.m_img_one.m_margin_left);
        make.width.equalTo(@(self.m_model.m_img_one.m_width));
        make.height.equalTo(@(self.m_model.m_img_one.m_height));
    }];

    [_m_lbl_one mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_title_one.m_margin_top);
        make.bottom.equalTo(self.m_img_two.mas_top).offset(-self.m_model.m_img_two.m_margin_top);
        make.left.equalTo(self.m_img_one.mas_right).offset(self.m_model.m_title_one.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_one.m_margin_right);
    }];

    [_m_img_two mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_one.mas_bottom).offset(self.m_model.m_img_two.m_margin_top);
        make.left.equalTo(self.m_lbl_one);
        make.width.equalTo(@(self.m_model.m_img_two.m_width));
        make.height.equalTo(@(self.m_model.m_img_two.m_height));
    }];

    [_m_lbl_two mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_two);
        make.left.equalTo(self.m_img_two.mas_right).offset(self.m_model.m_title_two.m_margin_left);
    }];

    [_m_img_three mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_two);
        make.left.equalTo(self.m_lbl_two.mas_right).offset(self.m_model.m_img_three.m_margin_left);
        make.width.equalTo(@(self.m_model.m_img_two.m_width));
        make.height.equalTo(@(self.m_model.m_img_two.m_height));
    }];

    [_m_lbl_three mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_three);
        make.left.equalTo(self.m_img_three.mas_right).offset(self.m_model.m_title_three.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_three.m_margin_right);
    }];

    [_m_img_four mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_img_two.mas_bottom).offset(self.m_model.m_img_four.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_img_four.m_margin_bottom);
        make.left.equalTo(self.m_lbl_one);
        make.width.equalTo(@(self.m_model.m_img_four.m_width));
        make.height.equalTo(@(self.m_model.m_img_four.m_height));
    }];

    [_m_lbl_four mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_four);

        make.left.equalTo(self.m_img_four.mas_right).offset(self.m_model.m_title_four.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_four.m_margin_right);

    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_four.mas_bottom).offset(self.m_model.m_img_four.m_margin_bottom);
    }];
}

#pragma mark - 属性
- (CWUBCell_Company_Two_Model*)m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Company_Two_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_one{

    if (!_m_lbl_one) {
        _m_lbl_one = [CWUBLabelWithModel new];
    }
    return _m_lbl_one;
}

- (CWUBLabelWithModel *)m_lbl_two{

    if (!_m_lbl_two) {
        _m_lbl_two = [CWUBLabelWithModel new];
    }
    return _m_lbl_two;
}

- (CWUBLabelWithModel *)m_lbl_three{

    if (!_m_lbl_three) {
        _m_lbl_three = [CWUBLabelWithModel new];
    }
    return _m_lbl_three;
}
- (CWUBLabelWithModel *)m_lbl_four{

    if (!_m_lbl_four) {
        _m_lbl_four = [CWUBLabelWithModel new];
    }
    return _m_lbl_four;
}

-(CWUBImageViewWithModel *)m_img_one{

    if(!_m_img_one){
        _m_img_one = [CWUBImageViewWithModel new];
        [_m_img_one setImage:[UIImage imageNamed:self.m_model.m_img_one.m_imgName]];
        _m_img_one.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_one.clipsToBounds = NO;
        [_m_img_one setClipsToBounds:NO];
    }
    return _m_img_one;
}

-(CWUBImageViewWithModel *)m_img_two{

    if(!_m_img_two){
        _m_img_two = [CWUBImageViewWithModel new];
        [_m_img_two setImage:[UIImage imageNamed:self.m_model.m_img_two.m_imgName]];
        _m_img_two.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_two.clipsToBounds = NO;
        [_m_img_two setClipsToBounds:NO];
    }
    return _m_img_two;
}

-(CWUBImageViewWithModel *)m_img_three{

    if(!_m_img_three){
        _m_img_three = [CWUBImageViewWithModel new];
        [_m_img_three setImage:[UIImage imageNamed:self.m_model.m_img_three.m_imgName]];
        _m_img_three.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_three.clipsToBounds = NO;
        [_m_img_three setClipsToBounds:NO];
    }
    return _m_img_three;
}

-(CWUBImageViewWithModel *)m_img_four{

    if(!_m_img_four){
        _m_img_four = [CWUBImageViewWithModel new];
        [_m_img_four setImage:[UIImage imageNamed:self.m_model.m_img_four.m_imgName]];
        _m_img_four.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_four.clipsToBounds = NO;
        [_m_img_four setClipsToBounds:NO];
    }
    return _m_img_four;
}

- (void) interface_updateWithModel:(CWUBCell_Company_Two_Model*)model{

    [super interface_updateWithModel:model];

    self.m_model = model;
    [self.m_lbl_one interface_update:self.m_model.m_title_one];
    [self.m_lbl_two interface_update:self.m_model.m_title_two];
    [self.m_lbl_three interface_update:self.m_model.m_title_three];
    [self.m_lbl_four interface_update:self.m_model.m_title_four];
    [self.m_img_one interface_update:self.m_model.m_img_one];
    [self.m_img_two interface_update:self.m_model.m_img_two];
    [self.m_img_three interface_update:self.m_model.m_img_three];
    [self.m_img_four interface_update:self.m_model.m_img_four];

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
