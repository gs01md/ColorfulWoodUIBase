//
//  CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight()

@property (nonatomic, strong) UIImageView * m_img_top;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_center;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottom_right;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model*)model{

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

    [self addSubview:self.m_img_top];
    [self addSubview:self.m_lbl_center];
    [self addSubview:self.m_lbl_bottom_left];
    [self addSubview:self.m_lbl_bottom_right];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_img_top mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_img_top.m_margin_top);
        make.width.equalTo(@(self.m_model.m_img_top.m_width));
        make.height.equalTo(@(self.m_model.m_img_top.m_height));
        make.centerX.equalTo(self);
    }];

    [_m_lbl_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title_center.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_center.m_margin_right);
        make.top.equalTo(self.m_img_top.mas_bottom).offset(self.m_model.m_title_center.m_margin_top);
        make.bottom.equalTo(self.m_lbl_bottom_left.mas_top).offset(-self.m_model.m_title_center.m_margin_bottom);
        make.centerX.equalTo(self);
    }];

    [_m_lbl_bottom_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_lbl_center.mas_bottom).offset(self.m_model.m_title_bottom_left.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottom_left.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_title_bottom_left.m_margin_left);
        make.right.equalTo(self.mas_centerX).offset(-self.m_model.m_title_bottom_left.m_margin_right);
    }];

    [_m_lbl_bottom_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_center.mas_bottom).offset(self.m_model.m_title_bottom_right.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_bottom_right.m_margin_bottom);
        make.left.equalTo(self.mas_centerX).offset(self.m_model.m_title_bottom_right.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_title_bottom_right.m_margin_right);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_bottom_left.mas_bottom).offset(self.m_model.m_title_bottom_left.m_margin_bottom);
        make.top.equalTo(self.m_lbl_bottom_right.mas_bottom).offset(self.m_model.m_title_bottom_right.m_margin_bottom);
    }];

}

-(CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model new];
    }

    return _m_model;
}

-(UIImageView *)m_img_top{

    if(!_m_img_top){
        _m_img_top = [UIImageView new];
        [_m_img_top setImage:[UIImage imageNamed:self.m_model.m_img_top.m_imgName]];
        _m_img_top.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_top.clipsToBounds = NO;
        [_m_img_top setClipsToBounds:NO];
    }
    return _m_img_top;
}

- (CWUBLabelWithModel *)m_lbl_center{

    if (!_m_lbl_center) {

        _m_lbl_center = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_center];
        _m_lbl_center.textAlignment = NSTextAlignmentCenter;
        _m_lbl_center.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_center.numberOfLines = self.m_model.m_title_center.m_numberOfLines;
    }
    return _m_lbl_center;
}

- (CWUBLabelWithModel *)m_lbl_bottom_left{

    if (!_m_lbl_bottom_left) {

        _m_lbl_bottom_left = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_bottom_left];
        _m_lbl_bottom_left.textAlignment = NSTextAlignmentRight;
        _m_lbl_bottom_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom_left.numberOfLines = self.m_model.m_title_bottom_left.m_numberOfLines;
    }
    return _m_lbl_bottom_left;
}

- (CWUBLabelWithModel *)m_lbl_bottom_right{

    if (!_m_lbl_bottom_right) {

        _m_lbl_bottom_right = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_bottom_right];
        _m_lbl_bottom_right.textAlignment = NSTextAlignmentLeft;
        _m_lbl_bottom_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottom_right.numberOfLines = self.m_model.m_title_bottom_right.m_numberOfLines;
    }
    return _m_lbl_bottom_right;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){

        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model*)model{

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self.m_img_top setImage:[UIImage imageNamed:self.m_model.m_img_top.m_imgName]];

    [self.m_lbl_center interface_update:model.m_title_center];
    [self.m_lbl_bottom_left interface_update:model.m_title_bottom_left];
    [self.m_lbl_bottom_right interface_update:model.m_title_bottom_right];
}

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

