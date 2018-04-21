//
//  CWUBCell_ImgLeft_TitleLeft_InfoRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgLeft_TitleLeft_InfoRight.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_ImgLeft_TitleLeft_InfoRight()

@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_title;
@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_info;
@property (nonatomic, strong) UIImageView * m_img_btn;
@property (nonatomic, strong) UIImageView * m_img_sep;

@end

@implementation CWUBCell_ImgLeft_TitleLeft_InfoRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgLeft_TitleLeft_InfoRight_Model*)model{

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

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_title];
    [self addSubview:self.m_lbl_info];
    [self addSubview:self.m_img_btn];
    [self addSubview:self.m_img_sep];

    [_m_lbl_info mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(CWUBDefineSViewWidth/3.));
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
    }];

    [_m_lbl_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_btn.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal/2.);
        make.right.equalTo(self.m_lbl_info.mas_left).offset(-CWUBBaseViewConfig_Space_Element_Horizontal);;
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
    }];

    [_m_img_btn mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_info).offset(2.);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Icon_Little));
        make.height.equalTo(@(CWUBBaseViewConfig_Width_Icon_Little));
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(CWUBBaseViewConfig_Space_Side_Horizontal));
        make.right.equalTo(@(-CWUBBaseViewConfig_Space_Side_Horizontal));
        make.bottom.equalTo(self);
        make.height.equalTo(@(1));
        make.top.equalTo(self.m_lbl_title.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

-(CWUBCell_ImgLeft_TitleLeft_InfoRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgLeft_TitleLeft_InfoRight_Model new];
    }

    return _m_model;
}

- (CWUBLableLeftTop *)m_lbl_title{

    if (!_m_lbl_title) {
        _m_lbl_title = [[CWUBLableLeftTop alloc] initWithModel: self.m_model.m_title];
        _m_lbl_title.textAlignment = NSTextAlignmentLeft;
        _m_lbl_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_title.numberOfLines = 0;
    }
    return _m_lbl_title;
}

- (CWUBLableLeftTop *)m_lbl_info{

    if (!_m_lbl_info) {
        _m_lbl_info = [[CWUBLableLeftTop alloc] initWithModel: self.m_model.m_info];
        _m_lbl_info.textAlignment = NSTextAlignmentRight;
        _m_lbl_info.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_info.numberOfLines = 0;
    }
    return _m_lbl_info;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

-(UIImageView *)m_img_btn{

    if(!_m_img_btn){
        _m_img_btn = [UIImageView new];
        [_m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg]];
        _m_img_btn.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_btn.clipsToBounds = YES;
        [_m_img_btn setClipsToBounds:YES];
    }
    return _m_img_btn;
}

- (void) interface_updateWithModel:(CWUBCell_ImgLeft_TitleLeft_InfoRight_Model*)model{

    self.m_model = model;

    [self.m_lbl_title interface_update:model.m_title];
    [self.m_lbl_info interface_update:model.m_info];
    if (self.m_model.m_color_bottomLine) {
        self.m_img_sep.backgroundColor = self.m_model.m_color_bottomLine;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
