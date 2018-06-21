//
//  CWUBCell_CharterDiscount.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/2.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_CharterDiscount.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_CharterDiscount()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom_right;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom_center;

@property (nonatomic, strong) UIImageView * m_img_banner;
@property (nonatomic, strong) UIImageView * m_img_center;
@property (nonatomic, strong) UIImageView * m_img_sep;

/**
 * 由于出发城市和出发时间都不确定高度，所以增加一条线
 */
@property (nonatomic, strong) UIImageView * m_img_sep_hidden;

@property (nonatomic, strong) UIView * m_view_soldOut;
@property (nonatomic, strong) UIImageView * m_img_soldOut;

@end

@implementation CWUBCell_CharterDiscount

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_CharterDiscount_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initWithSubViews];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_CharterDiscount_Model*)model{

    if (self = [super init]) {
        self.m_model = model;
        [self initWithSubViews];
    }

    return self;
}

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_lbl_bottom_center];
    [self addSubview:self.m_lbl_bottom_right];
    [self addSubview:self.m_lbl_bottom_left];
    [self addSubview:self.m_img_banner];
    [self addSubview:self.m_img_center];
    [self addSubview:self.m_img_sep];
    [self addSubview:self.m_img_sep_hidden];

    [self addSubview:self.m_view_soldOut];
    [self addSubview:self.m_img_soldOut];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_img_banner mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(10*1.5);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        float height = 80./145.*(CWUBDefineSViewWidth-CWUBBaseViewConfig_Space_Side_Horizontal*2.);
        make.height.equalTo(@(height));
        make.bottom.equalTo(self.m_lbl_left.mas_top).offset(-10);
    }];

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_banner);
        make.width.equalTo(@(CWUBDefineSViewWidth/4.));
        make.top.equalTo(self.m_img_banner.mas_bottom).offset(10);
        make.bottom.equalTo(self.m_img_sep_hidden.mas_top).offset(-10*0.5);
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_img_banner);
        make.width.equalTo(@(CWUBDefineSViewWidth/4.));
        make.top.equalTo(self.m_img_banner.mas_bottom).offset(10);
        make.bottom.equalTo(self.m_img_sep_hidden.mas_top).offset(-10*0.5);
        make.centerY.equalTo(self.m_lbl_left);
    }];

    [_m_img_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.m_img_banner);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Icon));
        make.height.equalTo(@(CWUBBaseViewConfig_Width_Icon));
        make.centerY.equalTo(self.m_lbl_right);
    }];

    [_m_img_sep_hidden mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(CWUBBaseViewConfig_Space_Side_Horizontal));
        make.right.equalTo(@(-CWUBBaseViewConfig_Space_Side_Horizontal));
        make.height.equalTo(@(0.01));
        make.top.equalTo(self.m_lbl_right.mas_bottom).offset(10*0.5);
        make.bottom.equalTo(self.m_lbl_bottom_left.mas_top).offset(-10*0.5);
    }];

    [_m_lbl_bottom_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_banner);
        make.width.equalTo(@(CWUBDefineSViewWidth/4.));
        make.top.equalTo(self.m_img_sep_hidden.mas_bottom).offset(10*0.5);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-10*1.5);

    }];

    [_m_lbl_bottom_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_lbl_right);
        make.width.equalTo(@(CWUBDefineSViewWidth/4.));
        make.top.equalTo(self.m_img_sep_hidden.mas_bottom).offset(10*0.5);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-10*1.5);

    }];

    [_m_lbl_bottom_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_lbl_bottom_right.mas_left).offset(-10);
        make.left.equalTo(self.m_lbl_bottom_left.mas_right).offset(10);
        make.top.equalTo(self.m_img_sep_hidden.mas_bottom).offset(10*0.5);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-10*1.5);
        make.centerX.equalTo(self);

    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_bottom_left.mas_bottom).offset(10*1.5);
    }];

    [_m_view_soldOut mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_img_banner);
        make.right.equalTo(self.m_img_banner);
        make.bottom.equalTo(self.m_img_banner);
        make.top.equalTo(self.m_img_banner);
    }];

    [_m_img_soldOut mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_img_banner);
        make.top.equalTo(self.m_img_banner);

    }];
}

#pragma mark - 属性
-(CWUBCell_CharterDiscount_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_CharterDiscount_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_left{

    if (!_m_lbl_left) {
        _m_lbl_left = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_left];
        _m_lbl_left.textAlignment = NSTextAlignmentLeft;
        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
}

- (CWUBLabelWithModel *)m_lbl_right{

    if (!_m_lbl_right) {
        _m_lbl_right = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_right];
        _m_lbl_right.textAlignment = NSTextAlignmentRight;
        _m_lbl_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_right.numberOfLines = 0;
    }
    return _m_lbl_right;
}

- (CWUBLabelWithModel *)m_lbl_bottom_left{

    if (!_m_lbl_bottom_left) {
        _m_lbl_bottom_left = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_bottom_left];
        _m_lbl_bottom_left.textAlignment = NSTextAlignmentLeft;
        _m_lbl_bottom_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom_left.numberOfLines = 0;
    }
    return _m_lbl_bottom_left;
}

- (CWUBLabelWithModel *)m_lbl_bottom_right{

    if (!_m_lbl_bottom_right) {
        _m_lbl_bottom_right = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_bottom_right];
        _m_lbl_bottom_right.textAlignment = NSTextAlignmentRight;
        _m_lbl_bottom_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom_right.numberOfLines = 0;
    }
    return _m_lbl_bottom_right;
}

- (CWUBLabelWithModel *)m_lbl_bottom_center{

    if (!_m_lbl_bottom_center) {
        _m_lbl_bottom_center = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_bottom_center];
        _m_lbl_bottom_center.textAlignment = NSTextAlignmentCenter;
        _m_lbl_bottom_center.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom_center.numberOfLines = 0;
    }
    return _m_lbl_bottom_center;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

-(UIImageView *)m_img_sep_hidden{

    if(!_m_img_sep_hidden){
        _m_img_sep_hidden = [CWUBDefine imgSep];
        [_m_img_sep_hidden setClipsToBounds:YES];
    }
    return _m_img_sep_hidden;
}

-(UIImageView *)m_img_banner{

    if(!_m_img_banner){
        _m_img_banner = [UIImageView new];
        [_m_img_banner setImage:[UIImage imageNamed:self.m_model.m_img_banner.m_imgName]];
        _m_img_banner.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_banner.clipsToBounds = YES;
        [_m_img_banner setClipsToBounds:YES];
    }
    return _m_img_banner;
}

-(UIImageView *)m_img_center{

    if(!_m_img_center){
        _m_img_center = [UIImageView new];
        [_m_img_center setImage:[UIImage imageNamed:self.m_model.m_img_center.m_imgName]];
        _m_img_center.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_center.clipsToBounds = YES;
        [_m_img_center setClipsToBounds:YES];
    }
    return _m_img_center;
}

- (UIView*)m_view_soldOut{

    if(!_m_view_soldOut){
        _m_view_soldOut = [UIView new];
        _m_view_soldOut.backgroundColor = [UIColor blackColor];
        _m_view_soldOut.layer.opacity = 0.7;
        _m_view_soldOut.userInteractionEnabled = NO;
    }

    return _m_view_soldOut;
}

- (UIImageView*)m_img_soldOut{

    if(!_m_img_soldOut){
        _m_img_soldOut = [UIImageView new];
        [_m_img_soldOut setImage:[UIImage imageNamed:@"product_soldOut"]];
        _m_img_soldOut.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_soldOut.clipsToBounds = YES;
        [_m_img_soldOut setClipsToBounds:YES];
    }
    return _m_img_soldOut;
}

#pragma mark - 功能

/**
 * 添加是否已售完页面
 */
- (void) func_addView_soldOut{


}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void) interface_updateWithModel:(CWUBCell_CharterDiscount_Model*)model{

    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_right interface_update:model.m_title_right];
    [self.m_lbl_bottom_center interface_update:model.m_title_bottom_center];
    [self.m_lbl_bottom_right interface_update:model.m_title_bottom_right];
    [self.m_lbl_bottom_left interface_update:model.m_title_bottom_left];
    [self.m_img_center setImage:[UIImage imageNamed:model.m_img_center.m_imgName]];
    [self.m_img_banner setImage:[UIImage imageNamed:self.m_model.m_img_banner.m_imgName]];

    if (self.m_model.m_isSoldOut) {

        self.m_view_soldOut.hidden = NO;
        self.m_img_soldOut.hidden = NO;

        self.m_lbl_left.textColor = RGBCOLOR(62., 62., 62.);
        self.m_lbl_right.textColor = RGBCOLOR(62., 62., 62.);
        self.m_lbl_bottom_center.textColor = RGBCOLOR(62., 62., 62.);
        self.m_lbl_bottom_left.textColor = RGBCOLOR(62., 62., 62.);
        self.m_lbl_bottom_right.textColor = RGBCOLOR(62., 62., 62.);
        [self.m_img_center setImage:[UIImage imageNamed:@"plane_gray"]];

    }else{

        self.m_view_soldOut.hidden = YES;
        self.m_img_soldOut.hidden = YES;
    }

    [self func_updateConsrtains];
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
