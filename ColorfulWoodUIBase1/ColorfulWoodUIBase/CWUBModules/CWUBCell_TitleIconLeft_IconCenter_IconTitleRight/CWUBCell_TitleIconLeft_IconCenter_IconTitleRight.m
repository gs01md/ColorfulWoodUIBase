//
//  CWUBCell_TitleIconLeft_IconCenter_IconTitleRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/1.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleIconLeft_IconCenter_IconTitleRight.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_TitleIconLeft_IconCenter_IconTitleRight()

@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_right;
@property (nonatomic, strong) UIImageView * m_img_left;
@property (nonatomic, strong) UIImageView * m_img_right;
@property (nonatomic, strong) UIImageView * m_img_center;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_TitleIconLeft_IconCenter_IconTitleRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleIconLeft_IconCenter_IconTitleRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.m_model = model;
        if (self.m_model.m_color_bottomLine) {
            self.m_img_sep.backgroundColor = self.m_model.m_color_bottomLine;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initWithSubViews];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_TitleIconLeft_IconCenter_IconTitleRight_Model*)model{

    if (self = [super init]) {
        self.m_model = model;
        [self initWithSubViews];
    }

    return self;
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
    [self addSubview:self.m_img_center];
    [self addSubview:self.m_img_sep];

    [_m_img_center mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.centerY.equalTo(self);
//        make.top.equalTo(self).offset(margin_topOrBottom);
//        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-margin_topOrBottom);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Icon_Big));
        make.height.equalTo(@(CWUBBaseViewConfig_Width_Icon_Big));
    }];

    [_m_lbl_left mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.lessThanOrEqualTo(@(CWUBDefineSViewWidth/3.2));
        make.top.equalTo(self).offset(margin_topOrBottom);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-margin_topOrBottom);
    }];

    [_m_lbl_right mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.lessThanOrEqualTo(@(CWUBDefineSViewWidth/3.2));
        make.top.equalTo(self).offset(margin_topOrBottom);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-margin_topOrBottom);
    }];

    [_m_img_left mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_lbl_left.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal/2.);
        make.centerY.equalTo(self.m_img_center).offset(4);
    }];

    [_m_img_right mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_lbl_right.mas_left).offset(-CWUBBaseViewConfig_Space_Element_Horizontal/2.);
        make.centerY.equalTo(self.m_img_left);
    }];


    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(CWUBBaseViewConfig_Space_Side_Horizontal));
        make.right.equalTo(@(-CWUBBaseViewConfig_Space_Side_Horizontal));
        make.bottom.equalTo(self);
        make.height.equalTo(@(1));
        make.top.equalTo(self.m_lbl_right.mas_bottom).offset(margin_topOrBottom);
    }];
}

-(CWUBCell_TitleIconLeft_IconCenter_IconTitleRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleIconLeft_IconCenter_IconTitleRight_Model new];
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
//        _m_img_left.contentMode = UIViewContentModeScaleAspectFill;
//        _m_img_left.clipsToBounds = YES;
//        [_m_img_left setClipsToBounds:YES];
    }
    return _m_img_left;
}

-(UIImageView *)m_img_right{

    if(!_m_img_right){
        _m_img_right = [UIImageView new];
        [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img_right]];
//        _m_img_right.contentMode = UIViewContentModeScaleAspectFill;
//        _m_img_right.clipsToBounds = YES;
//        [_m_img_right setClipsToBounds:YES];
    }
    return _m_img_right;
}

-(UIImageView *)m_img_center{

    if(!_m_img_center){
        _m_img_center = [UIImageView new];
        [_m_img_center setImage:[UIImage imageNamed:self.m_model.m_img_center]];
        _m_img_center.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_center.clipsToBounds = YES;
        [_m_img_center setClipsToBounds:YES];
    }
    return _m_img_center;
}

- (void) interface_updateWithModel:(CWUBCell_TitleIconLeft_IconCenter_IconTitleRight_Model*)model{

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
    [_m_img_center setImage:[UIImage imageNamed:self.m_model.m_img_center]];
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
