//
//  CWUBCell_Address.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Address.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_Address()


@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_title;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_info_name_phone;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_address;

@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_Address

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Address_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_Address_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_Address_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_color_bottomLine) {
        self.m_img_sep.backgroundColor = self.m_model.m_color_bottomLine;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self initWithSubViews];
}

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_title];
    [self addSubview:self.m_lbl_info_name_phone];
    [self addSubview:self.m_lbl_address];
    [self addSubview:self.m_img_sep];

    [_m_lbl_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];
    
    [_m_lbl_info_name_phone mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_lbl_address.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical/4.);
        make.left.equalTo(self.m_lbl_title.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_lbl_address mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_lbl_info_name_phone.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/4.);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lbl_info_name_phone);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(CWUBBaseViewConfig_Space_Side_Horizontal));
        make.right.equalTo(@(-CWUBBaseViewConfig_Space_Side_Horizontal));
        make.bottom.equalTo(self);
        make.height.equalTo(@(1));
        make.top.equalTo(self.m_lbl_address.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

-(CWUBCell_Address_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Address_Model new];
    }

    return _m_model;
}

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

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}



- (void) interface_updateWithModel:(CWUBCell_Address_Model*)model{

    self.m_model = model;
    [self.m_lbl_title interface_update:model.m_title];
    [self.m_lbl_info_name_phone interface_update:model.m_title_name_Phone];
    [self.m_lbl_address interface_update:model.m_address];
    if (self.m_model.m_color_bottomLine) {
        self.m_img_sep.backgroundColor = self.m_model.m_color_bottomLine;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
}

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end


