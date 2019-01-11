//
//  CWUBCell_Address_ArrowRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Address_ArrowRight.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_Address_ArrowRight()

@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_title;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_info_name_phone;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_address;


@property (nonatomic, strong) UIImageView * m_img_arrow;
@end

@implementation CWUBCell_Address_ArrowRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Address_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        if (self.m_model.m_bottomLineInfo.m_color) {
            self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
        }else{
            self.m_img_sep.backgroundColor = [UIColor clearColor];
        }
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self func_initWithSubViews];
    }

    return self;
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_title];
    [self addSubview:self.m_lbl_info_name_phone];
    [self addSubview:self.m_lbl_address];
    [self addSubview:self.m_img_sep];
    [self addSubview:self.m_img_arrow];
    
    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_title mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];

    [_m_lbl_info_name_phone mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_lbl_address.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical/4.);
        make.left.equalTo(self.m_lbl_title.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self.m_img_arrow.mas_left).offset(-CWUBBaseViewConfig_Space_Element_Horizontal);
    }];

    [_m_lbl_address mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_lbl_info_name_phone.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/4.);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lbl_info_name_phone);
        make.right.equalTo(self.m_img_arrow.mas_left).offset(-CWUBBaseViewConfig_Space_Element_Horizontal);
    }];

    [_m_img_arrow mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(self.m_model.m_arrow.m_width));
        make.height.equalTo(@(self.m_model.m_arrow.m_height));
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_address.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

#pragma mark - 属性
- (CWUBLableLeftTop *)m_lbl_title{

    if (!_m_lbl_title) {
        _m_lbl_title = [[CWUBLableLeftTop alloc] initWithModel:self.m_model.m_title];
        _m_lbl_title.textAlignment = NSTextAlignmentLeft;
        _m_lbl_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_title.numberOfLines = 0;
    }
    return _m_lbl_title;
}

- (CWUBLabelWithModel *)m_lbl_info_name_phone{

    if (!_m_lbl_info_name_phone) {
        _m_lbl_info_name_phone = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_name_Phone];
        _m_lbl_info_name_phone.textAlignment = NSTextAlignmentLeft;
        _m_lbl_info_name_phone.lineBreakMode = NSLineBreakByCharWrapping;
        _m_lbl_info_name_phone.numberOfLines = 0;
    }

    return _m_lbl_info_name_phone;
}

- (CWUBLabelWithModel *)m_lbl_address{

    if (!_m_lbl_address) {
        _m_lbl_address = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_address];
        _m_lbl_address.textAlignment = NSTextAlignmentLeft;
        _m_lbl_address.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_address.numberOfLines = 0;
    }
    return _m_lbl_address;
}

-(UIImageView *)m_img_arrow{

    if(!_m_img_arrow){
        _m_img_arrow = [UIImageView new];
        [_m_img_arrow setImage:[UIImage imageNamed:self.m_model.m_arrow.m_imgName]];
        _m_img_arrow.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_arrow.clipsToBounds = YES;
        [_m_img_arrow setClipsToBounds:YES];
    }
    return _m_img_arrow;
}


- (void) interface_updateWithModel:(CWUBCell_Address_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    [self.m_lbl_title interface_update:model.m_title];
    [self.m_lbl_info_name_phone interface_update:model.m_title_name_Phone];
    [self.m_img_arrow setImage:[UIImage imageNamed:self.m_model.m_arrow.m_imgName]];
    [self.m_lbl_address interface_update:model.m_address];
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

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end



