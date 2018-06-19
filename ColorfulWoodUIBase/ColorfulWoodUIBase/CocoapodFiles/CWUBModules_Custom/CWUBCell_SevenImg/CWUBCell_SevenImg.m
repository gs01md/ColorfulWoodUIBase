//
//  CWUBCell_SevenImg.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_SevenImg.h"

@interface CWUBCell_SevenImg()

@property (nonatomic, strong) UILabel *m_lbl_one;
@property (nonatomic, strong) UILabel *m_lbl_two;
@property (nonatomic, strong) UILabel *m_lbl_three;
@property (nonatomic, strong) UILabel *m_lbl_four;

@property (nonatomic, strong) UIImageView * m_img_one;
@property (nonatomic, strong) UIImageView * m_img_two;
@property (nonatomic, strong) UIImageView * m_img_three;

@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_SevenImg

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_SevenImg_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_SevenImg_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_SevenImg_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self initWithSubViews];
}

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_one];
    [self addSubview:self.m_lbl_two];
    [self addSubview:self.m_lbl_three];
    [self addSubview:self.m_lbl_four];

    [self addSubview:self.m_img_one];
    [self addSubview:self.m_img_two];
    [self addSubview:self.m_img_three];

    [self addSubview:self.m_img_sep];

    /**
     * 把第一个图片作为标志位
     */
    [_m_img_one mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self).offset(self.m_model.m_img_one.m_margin_left);
        make.top.equalTo(self).offset(self.m_model.m_img_one.m_margin_top);
        make.width.equalTo(@(self.m_model.m_img_one.m_width));
        make.height.equalTo(@(self.m_model.m_img_one.m_height));
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_one.m_margin_bottom);
    }];

    [_m_img_three mas_makeConstraints:^(MASConstraintMaker *make) {

        make.right.equalTo(self).offset(-self.m_model.m_img_three.m_margin_right);
        make.width.equalTo(self.m_img_one);
        make.height.equalTo(self.m_img_one);
        make.centerY.equalTo(self.m_img_one);
    }];

    [_m_img_two mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerX.equalTo(self);
        make.width.equalTo(self.m_img_one);
        make.height.equalTo(self.m_img_one);
        make.centerY.equalTo(self.m_img_one);
    }];

    [_m_lbl_one mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_one);
        make.left.equalTo(self).offset(self.m_model.m_title_one.m_margin_left);
        make.right.equalTo(self.m_img_one.mas_left).offset(-self.m_model.m_title_one.m_margin_right);
        make.height.equalTo(@(self.m_model.m_title_one.m_height));
    }];

    [_m_lbl_two mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_one);
        make.left.equalTo(self.m_img_one.mas_right).offset(self.m_model.m_title_two.m_margin_left);
        make.right.equalTo(self.m_img_two.mas_left).offset(-self.m_model.m_title_two.m_margin_right);
        make.height.equalTo(self.m_lbl_one);
    }];

    [_m_lbl_three mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_one);
        make.left.equalTo(self.m_img_two.mas_right).offset(self.m_model.m_title_three.m_margin_left);
        make.right.equalTo(self.m_img_three.mas_left).offset(-self.m_model.m_title_three.m_margin_right);
        make.height.equalTo(self.m_lbl_one);
    }];

    [_m_lbl_four mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_img_one);
        make.left.equalTo(self.m_img_three.mas_right).offset(self.m_model.m_title_four.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_four.m_margin_right);
        make.height.equalTo(self.m_lbl_one);
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_one.mas_bottom).offset(self.m_model.m_img_one.m_margin_bottom);
    }];
}

- (CWUBCell_SevenImg_Model*)m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_SevenImg_Model new];
    }

    return _m_model;
}



- (UILabel *)m_lbl_one{

    if (!_m_lbl_one) {
        _m_lbl_one = [UILabel new];
        _m_lbl_one.backgroundColor = self.m_model.m_title_one.m_color_backGroud;
    }
    return _m_lbl_one;
}

- (UILabel *)m_lbl_two{

    if (!_m_lbl_two) {
        _m_lbl_two = [UILabel new];
        _m_lbl_two.backgroundColor = self.m_model.m_title_two.m_color_backGroud;
    }
    return _m_lbl_two;
}

- (UILabel *)m_lbl_three{

    if (!_m_lbl_three) {
        _m_lbl_three = [UILabel new];
        _m_lbl_three.backgroundColor = self.m_model.m_title_three.m_color_backGroud;
    }
    return _m_lbl_three;
}

- (UILabel *)m_lbl_four{

    if (!_m_lbl_four) {
        _m_lbl_four = [UILabel new];
        _m_lbl_four.backgroundColor = self.m_model.m_title_four.m_color_backGroud;
    }
    return _m_lbl_four;
}

-(UIImageView *)m_img_one{

    if(!_m_img_one){
        _m_img_one = [UIImageView new];
        [_m_img_one setImage:[UIImage imageNamed:self.m_model.m_img_one.m_imgName]];
        _m_img_one.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_one.clipsToBounds = NO;
        [_m_img_one setClipsToBounds:NO];
    }
    return _m_img_one;
}

-(UIImageView *)m_img_two{

    if(!_m_img_two){
        _m_img_two = [UIImageView new];
        [_m_img_two setImage:[UIImage imageNamed:self.m_model.m_img_two.m_imgName]];
        _m_img_two.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_two.clipsToBounds = NO;
        [_m_img_two setClipsToBounds:NO];
    }
    return _m_img_two;
}

-(UIImageView *)m_img_three{

    if(!_m_img_three){
        _m_img_three = [UIImageView new];
        [_m_img_three setImage:[UIImage imageNamed:self.m_model.m_img_three.m_imgName]];
        _m_img_three.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_three.clipsToBounds = NO;
        [_m_img_three setClipsToBounds:NO];
    }
    return _m_img_three;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_SevenImg_Model*)model{

    self.m_model = model;
    [self.m_lbl_one setBackgroundColor:self.m_model.m_title_one.m_color_backGroud];
    [self.m_lbl_two setBackgroundColor:self.m_model.m_title_two.m_color_backGroud];
    [self.m_lbl_three setBackgroundColor:self.m_model.m_title_three.m_color_backGroud];
    [self.m_lbl_four setBackgroundColor:self.m_model.m_title_four.m_color_backGroud];
    [self.m_img_one setImage:[UIImage imageNamed:self.m_model.m_img_one.m_imgName]];
    [self.m_img_two setImage:[UIImage imageNamed:self.m_model.m_img_two.m_imgName]];
    [self.m_img_three setImage:[UIImage imageNamed:self.m_model.m_img_three.m_imgName]];

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }

}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}


@end

