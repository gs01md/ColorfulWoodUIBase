//
//  CWUBCell_ImgCenter_TitleCenter.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/13.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgCenter_TitleCenter.h"

@interface CWUBCell_ImgCenter_TitleCenter()

@property (nonatomic, strong) UIView *m_back;
@property (nonatomic, strong) UIImageView *m_img_center;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_center;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_ImgCenter_TitleCenter

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgCenter_TitleCenter_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_ImgCenter_TitleCenter_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_ImgCenter_TitleCenter_Model*)model{

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

    [self addSubview:self.m_back];
    [self.m_back addSubview:self.m_img_center];
    [self.m_back addSubview:self.m_lbl_center];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{
    [_m_back mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.centerY.equalTo(self);
        make.top.equalTo(self).offset(self.m_model.m_title.m_margin_top);
        make.bottom.equalTo(self.m_img_sep).offset(-self.m_model.m_title.m_margin_bottom);
    }];

    [_m_lbl_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_center.mas_right).offset(self.m_model.m_title.m_margin_left);
        make.top.equalTo(self.m_back);
        make.bottom.equalTo(self.m_back);
        make.right.equalTo(self.m_back);
    }];

    [_m_img_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_back);
        make.centerY.equalTo(self.m_lbl_center);
        make.width.equalTo(@(self.m_model.m_image.m_width));
        make.height.equalTo(@(self.m_model.m_image.m_height));
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_center.mas_bottom).offset(self.m_model.m_title.m_margin_bottom);

    }];

}

-(CWUBCell_ImgCenter_TitleCenter_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgCenter_TitleCenter_Model new];
    }

    return _m_model;
}

- (UIView *)m_back{

    if (!_m_back) {
        _m_back = [UIView new];
    }

    return _m_back;
}

- (CWUBLabelWithModel *)m_lbl_center{

    if (!_m_lbl_center) {
        _m_lbl_center = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title];
        _m_lbl_center.textAlignment = NSTextAlignmentCenter;

        _m_lbl_center.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_center.numberOfLines = 0;
    }
    return _m_lbl_center;
}

-(UIImageView *)m_img_center{

    if(!_m_img_center){
        _m_img_center = [UIImageView new];
        [_m_img_center setImage:[UIImage imageNamed:self.m_model.m_image.m_imgName]];
        _m_img_center.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_center.clipsToBounds = YES;
        [_m_img_center setClipsToBounds:YES];
    }
    return _m_img_center;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_ImgCenter_TitleCenter_Model*)model{

    self.m_model = model;
    [self.m_lbl_center interface_update:model.m_title];
    [self.m_img_center setImage:[UIImage imageNamed:self.m_model.m_image.m_imgName]];
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

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
