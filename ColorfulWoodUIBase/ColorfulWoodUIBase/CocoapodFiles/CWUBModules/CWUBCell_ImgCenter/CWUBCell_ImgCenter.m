//
//  CWUBCell_ImgCenter.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgCenter.h"

@interface CWUBCell_ImgCenter()
@property (nonatomic, strong) UIImageView *m_img_center;
@property (nonatomic, strong) UIImageView *m_img_sep;
@end

@implementation CWUBCell_ImgCenter

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgCenter_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_ImgCenter_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_ImgCenter_Model*)model{

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

    [self addSubview:self.m_img_center];
    [self addSubview:self.m_img_sep];

    [_m_img_center mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self).offset(self.m_model.m_image.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_image.m_margin_bottom);
        make.width.equalTo(@(self.m_model.m_image.m_width));
        make.height.equalTo(@(self.m_model.m_image.m_height));
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_center.mas_bottom).offset(self.m_model.m_image.m_margin_bottom);
    }];
}

-(CWUBCell_ImgCenter_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgCenter_Model new];
    }

    return _m_model;
}

-(UIImageView *)m_img_center{

    if(!_m_img_center){
        _m_img_center = [UIImageView new];
        [_m_img_center setImage:[UIImage imageNamed:self.m_model.m_image.m_imgName]];
        _m_img_center.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_center.clipsToBounds = YES;
        [_m_img_center setClipsToBounds:YES];
        _m_img_center.layer.cornerRadius = self.m_model.m_image.m_width/2.;
        _m_img_center.layer.masksToBounds = YES;
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

- (void) interface_updateWithModel:(CWUBCell_ImgCenter_Model*)model{

    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end


