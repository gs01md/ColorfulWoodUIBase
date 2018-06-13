//
//  CWUBCell_Passenger_Delete.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Passenger_Delete.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_Passenger_Delete()

@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Show_name;
@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Info_name;
@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Show_id;
@property (nonatomic, strong) CWUBLableLeftTop *m_lbl_Info_id;
@property (nonatomic, strong) UIImageView * m_img_btn;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_Passenger_Delete

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Passenger_Delete_Model*)model{

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
    [self addSubview:self.m_img_btn];

    [_m_img_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(self.m_model.m_btnImg.m_width));
        make.height.equalTo(@(self.m_model.m_btnImg.m_height));
    }];

    [_m_lbl_Show_name mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_btn.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_lbl_Info_id.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];

    [_m_lbl_Info_name mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_lbl_Info_id.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lbl_Show_name.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_lbl_Info_id mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_Info_name.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lbl_Info_name);
        make.right.equalTo(self.m_lbl_Info_name);
    }];

    [_m_lbl_Show_id mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_lbl_Show_name);
        make.top.equalTo(self.m_lbl_Info_id);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(CWUBBaseViewConfig_Space_Side_Horizontal));
        make.right.equalTo(@(-CWUBBaseViewConfig_Space_Side_Horizontal));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_Info_id.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

-(CWUBCell_Passenger_Delete_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Passenger_Delete_Model new];
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

-(UIImageView *)m_img_btn{

    if(!_m_img_btn){
        _m_img_btn = [UIImageView new];
        [_m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];
        _m_img_btn.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_btn.clipsToBounds = YES;
        [_m_img_btn setClipsToBounds:YES];
        [_m_img_btn setUserInteractionEnabled:YES];
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_delete)];
        [_m_img_btn addGestureRecognizer:tapGesturRecognizer];
    }
    return _m_img_btn;
}

- (void) interface_updateWithModel:(CWUBCell_Passenger_Delete_Model*)model{

    self.m_model = model;
    [self.m_lbl_Show_name interface_update:model.m_title_name];
    [self.m_lbl_Show_id interface_update:model.m_title_id];
    [self.m_lbl_Info_name interface_update:model.m_info_name];
    [self.m_lbl_Info_id interface_update:model.m_info_id];
    [self.m_img_btn setImage:[UIImage imageNamed:self.m_model.m_btnImg.m_imgName]];
    
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }

}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 事件
- (void)event_delete{
    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Delete_Delegate_Del:)]) {

        [self.delegate CWUBCell_Passenger_Delete_Delegate_Del:self.m_model.m_id];
    }
}
@end
