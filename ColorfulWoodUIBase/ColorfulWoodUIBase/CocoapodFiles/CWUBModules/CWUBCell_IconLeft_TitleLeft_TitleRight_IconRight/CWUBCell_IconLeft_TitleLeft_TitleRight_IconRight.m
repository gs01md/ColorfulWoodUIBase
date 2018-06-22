//
//  CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"
#import "CWUBLabelLeftBottom.h"

@interface CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;
@property (nonatomic, strong) UIImageView * m_img_left;
@property (nonatomic, strong) UIImageView * m_img_right;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model*)model{

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

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_img_left];
    [self addSubview:self.m_img_right];
    [self addSubview:self.m_img_sep];

    [self func_constrains];
}

- (void)func_constrains{

    [_m_img_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_img_left.m_margin_left);
        make.centerY.equalTo(self.m_lbl_left);
        make.width.equalTo(@(self.m_model.m_img_left.m_width));
        make.height.equalTo(@(self.m_model.m_img_left.m_height));
    }];

    [_m_img_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-self.m_model.m_img_right.m_margin_right);
        make.width.equalTo(@(self.m_model.m_img_right.m_width));
        make.height.equalTo(@(self.m_model.m_img_right.m_height));
        make.centerY.equalTo(self);
    }];

    [_m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_left.mas_right).offset(self.m_model.m_title_left.m_margin_left);
        make.right.equalTo(self.mas_centerX);
        make.top.equalTo(self).offset(self.m_model.m_title_left.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_left.m_margin_bottom);
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_centerX).offset(self.m_model.m_title_right.m_margin_left);
        make.right.equalTo(self.m_img_right.mas_left).offset(-self.m_model.m_title_right.m_margin_right);
        make.top.equalTo(self).offset(self.m_model.m_title_right.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_right.m_margin_bottom);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        switch (self.m_model.m_bottomLineInfo.m_bottomLineType) {
            case CWUBBottomLineType_left:
                make.left.equalTo(@(0.));
                make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
                break;
            case CWUBBottomLineType_right:
                make.left.equalTo(self.m_lbl_left.mas_left);
                make.right.equalTo(@(0.));
                break;

            default:
                make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
                make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
                break;
        }
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_left.mas_bottom).offset(self.m_model.m_bottomLineInfo.m_margin_top);
    }];
}

- (CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_left{

    if (!_m_lbl_left) {

        switch (self.m_model.m_title_left.m_labelTextVerticalType) {
            case CWUBLabelTextVerticalType_top:
                _m_lbl_left = [[CWUBLableLeftTop alloc] initWithModel: self.m_model.m_title_left];
                break;

            case CWUBLabelTextVerticalType_bottom:
                _m_lbl_left = [[CWUBLabelLeftBottom alloc] initWithModel: self.m_model.m_title_left];

                break;

            default:
                _m_lbl_left = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_left];
                break;
        }

        _m_lbl_left.textAlignment = NSTextAlignmentLeft;
        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
}

- (CWUBLabelWithModel *)m_lbl_right{

    if (!_m_lbl_right) {


        switch (self.m_model.m_title_right.m_labelTextVerticalType) {
            case CWUBLabelTextVerticalType_top:
                _m_lbl_right = [[CWUBLableLeftTop alloc] initWithModel: self.m_model.m_title_right];
                break;

            case CWUBLabelTextVerticalType_bottom:
                _m_lbl_right = [[CWUBLabelLeftBottom alloc] initWithModel: self.m_model.m_title_right];
                break;

            default:
                _m_lbl_right = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title_right];
                break;
        }

        _m_lbl_right.textAlignment = NSTextAlignmentRight;
        _m_lbl_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_right.numberOfLines = 0;
    }
    return _m_lbl_right;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

-(UIImageView *)m_img_left{

    if(!_m_img_left){
        _m_img_left = [UIImageView new];
        [_m_img_left setImage:[UIImage imageNamed:self.m_model.m_img_left.m_imgName]];
        _m_img_left.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_left.clipsToBounds = NO;
        [_m_img_left setClipsToBounds:NO];
    }
    return _m_img_left;
}

-(UIImageView *)m_img_right{

    if(!_m_img_right){
        _m_img_right = [UIImageView new];
        [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right.m_imgName]];
        _m_img_right.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_right.clipsToBounds = NO;
        [_m_img_right setClipsToBounds:NO];
    }
    return _m_img_right;
}

- (void) interface_updateWithModel:(CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model*)model{

    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_right interface_update:model.m_title_right];
    [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right.m_imgName]];
    [_m_img_left setImage:[UIImage imageNamed:self.m_model.m_img_left.m_imgName]];
    [self func_constrains];
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

