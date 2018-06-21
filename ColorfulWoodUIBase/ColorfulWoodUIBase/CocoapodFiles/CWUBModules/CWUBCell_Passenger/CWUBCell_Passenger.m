//
//  CWUBCell_Passenger.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Passenger.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_Passenger()



@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Show_name;
@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Info_name;
@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Show_id;
@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Info_id;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_Passenger

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Passenger_Model*)model{

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

- (void) initWithSubViews{

    [self addSubview:self.m_lbl_Show_name];
    [self addSubview:self.m_lbl_Info_name];
    [self addSubview:self.m_lbl_Show_id];
    [self addSubview:self.m_lbl_Info_id];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_Show_name mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_lbl_Info_id.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical/3.);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];

    [_m_lbl_Info_name mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_lbl_Info_id.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical/3.);
        make.left.equalTo(self.m_lbl_Show_name.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_lbl_Info_id mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_Info_name.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/3.);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lbl_Info_name);
        make.right.equalTo(self.m_lbl_Info_name);
    }];

    [_m_lbl_Show_id mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_lbl_Show_name);
        make.top.equalTo(self.m_lbl_Info_id);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_Info_id.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

#pragma mark - 属性
-(CWUBCell_Passenger_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Passenger_Model new];
    }

    return _m_model;
}

- (CWUBLableLeftTop *)m_lbl_Show_name{

    if (!_m_lbl_Show_name) {
        _m_lbl_Show_name = [[CWUBLableLeftTop alloc] initWithModel:self.m_model.m_title_name];
        _m_lbl_Show_name.textAlignment = NSTextAlignmentLeft;
        _m_lbl_Show_name.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_Show_name.numberOfLines = 0;
    }
    return _m_lbl_Show_name;
}

- (CWUBLableLeftTop *)m_lbl_Info_name{

    if (!_m_lbl_Info_name) {
        _m_lbl_Info_name = [[CWUBLableLeftTop alloc] initWithModel:self.m_model.m_info_name];
        _m_lbl_Info_name.textAlignment = NSTextAlignmentLeft;
        _m_lbl_Info_name.lineBreakMode = NSLineBreakByCharWrapping;
        _m_lbl_Info_name.numberOfLines = 0;
    }

    return _m_lbl_Info_name;
}

- (CWUBLableLeftTop *)m_lbl_Show_id{

    if (!_m_lbl_Show_id) {
        _m_lbl_Show_id = [[CWUBLableLeftTop alloc] initWithModel:self.m_model.m_title_id];
        _m_lbl_Show_id.textAlignment = NSTextAlignmentLeft;
        _m_lbl_Show_id.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_Show_id.numberOfLines = 0;
    }
    return _m_lbl_Show_id;
}

- (CWUBLableLeftTop *)m_lbl_Info_id{

    if (!_m_lbl_Info_id) {
        _m_lbl_Info_id = [[CWUBLableLeftTop alloc] initWithModel:self.m_model.m_info_id];
        _m_lbl_Info_id.textAlignment = NSTextAlignmentLeft;
        _m_lbl_Info_id.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_Info_id.numberOfLines = 0;
    }
    return _m_lbl_Info_id;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}



- (void) interface_updateWithModel:(CWUBCell_Passenger_Model*)model{

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self.m_lbl_Show_name interface_update:model.m_title_name];
    [self.m_lbl_Show_id interface_update:model.m_title_id];
    [self.m_lbl_Info_name interface_update:model.m_info_name];
    [self.m_lbl_Info_id interface_update:model.m_info_id];

    [self func_updateConsrtains];

}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

