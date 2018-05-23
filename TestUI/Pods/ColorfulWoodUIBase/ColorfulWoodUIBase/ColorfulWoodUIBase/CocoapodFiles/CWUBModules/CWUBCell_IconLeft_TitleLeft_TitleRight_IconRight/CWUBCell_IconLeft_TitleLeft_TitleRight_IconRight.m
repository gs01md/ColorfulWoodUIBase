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

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

        [self fun_commonInitWithModel:model];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
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

    self.m_model = model;
    if (self.m_model.m_color_bottomLine) {
        self.m_img_sep.backgroundColor = self.m_model.m_color_bottomLine;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self initWithSubViews];
}

- (void) initWithSubViews{

    float margin_topOrBottom = CWUBBaseViewConfig_Space_Side_Vertical;

    if (self.m_model.m_margin_topOrBottom > 0.) {
        margin_topOrBottom = self.m_model.m_margin_topOrBottom;
    }

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_img_left];
    [self addSubview:self.m_img_right];
    [self addSubview:self.m_img_sep];

    [_m_img_left mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_margin_leftOrRight);
        make.centerY.equalTo(self.m_lbl_left);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Icon_Little));
        make.height.equalTo(@(CWUBBaseViewConfig_Width_Icon_Little));
    }];

    [_m_img_right mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-self.m_model.m_margin_leftOrRight);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Icon));
        make.height.equalTo(@(CWUBBaseViewConfig_Width_Icon));
        make.centerY.equalTo(self);
    }];

    [_m_lbl_left mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_left.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal/2.);
        make.right.equalTo(self.mas_centerX);
        make.top.equalTo(self).offset(margin_topOrBottom);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-margin_topOrBottom);
    }];

    [_m_lbl_right mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_centerX).offset(CWUBBaseViewConfig_Space_Element_Horizontal/2.);
        make.right.equalTo(self.m_img_right.mas_left).offset(-CWUBBaseViewConfig_Space_Element_Horizontal);
        make.top.equalTo(self).offset(margin_topOrBottom);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-margin_topOrBottom);
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        switch (self.m_model.m_bottomLineType) {
            case CWUBBottomLineType_left:
                make.left.equalTo(@(0.));
                make.right.equalTo(@(-self.m_model.m_margin_leftOrRight));
                break;
            case CWUBBottomLineType_right:
                make.left.equalTo(self.m_lbl_left.mas_left);
                make.right.equalTo(@(0.));
                break;

            default:
                make.left.equalTo(@(self.m_model.m_margin_leftOrRight));
                make.right.equalTo(@(-self.m_model.m_margin_leftOrRight));
                break;
        }
        make.bottom.equalTo(self);
        make.height.equalTo(@(1.));
        make.top.equalTo(self.m_lbl_left.mas_bottom).offset(margin_topOrBottom);
    }];
}

-(CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model*) m_model{

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
        [_m_img_left setImage:[UIImage imageNamed:self.m_model.m_img_left]];
        _m_img_left.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_left.clipsToBounds = YES;
        [_m_img_left setClipsToBounds:YES];
    }
    return _m_img_left;
}

-(UIImageView *)m_img_right{

    if(!_m_img_right){
        _m_img_right = [UIImageView new];
        [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right]];
        _m_img_right.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_right.clipsToBounds = YES;
        [_m_img_right setClipsToBounds:YES];
    }
    return _m_img_right;
}

- (void) interface_updateWithModel:(CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model*)model{

    self.m_model = model;
    if (self.m_model.m_color_bottomLine) {
        self.m_img_sep.backgroundColor = self.m_model.m_color_bottomLine;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self.m_lbl_left interface_update:model.m_title_left];
    [self.m_lbl_right interface_update:model.m_title_right];
    [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right]];
    [_m_img_left setImage:[UIImage imageNamed:self.m_model.m_img_left]];
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

