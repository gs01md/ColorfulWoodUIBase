//
//  CWUBCell_ButtonRight_TitleRight_ButtonRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ButtonRight_TitleRight_ButtonRight.h"
#import "CWUBLabelWithModel.h"
#import "CWUBDefine.h"

@interface CWUBCell_ButtonRight_TitleRight_ButtonRight()

@property (nonatomic, strong) UIButton * m_btn_img;
@property (nonatomic, strong) CWUBLabelWithModel * m_lbl_right;
@property (nonatomic, strong) UIButton *m_btn_right;

@end

@implementation CWUBCell_ButtonRight_TitleRight_ButtonRight

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ButtonRight_TitleRight_ButtonRight_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {
        self.m_model = model;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initWithSubViews];
    }
    
    return self;
}

- (void) initWithSubViews{

    [self addSubview:self.m_btn_img];
    [self addSubview:self.m_lbl_right];
    [self addSubview:self.m_btn_right];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_btn_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-CWUBDefine_Width(26.));
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical*1.5);
        make.bottom.equalTo(self.mas_bottom).offset(-CWUBBaseViewConfig_Space_Side_Vertical*1.5);
    }];

    [_m_lbl_right mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.right.equalTo(self.m_btn_right.mas_left).offset(-5.);
        make.top.equalTo(self.m_btn_right);
        make.bottom.equalTo(self.m_btn_right);
    }];

    [_m_btn_img mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_lbl_right.mas_left).offset(-5.);
        make.top.equalTo(self.m_btn_right);
        make.bottom.equalTo(self.m_btn_right);
        make.height.equalTo(@(20));
        make.width.equalTo(@(20));
    }];
}

#pragma mark - 属性
-(CWUBCell_ButtonRight_TitleRight_ButtonRight_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ButtonRight_TitleRight_ButtonRight_Model new];
    }

    return _m_model;
}

-(UIButton *)m_btn_img{

    if(!_m_btn_img){
        _m_btn_img = [UIButton new];
        [_m_btn_img setImage:[UIImage imageNamed:self.m_model.m_button_img] forState:UIControlStateNormal];

        [_m_btn_img setUserInteractionEnabled:YES];
        UITapGestureRecognizer * tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_agree)];
        [_m_btn_img addGestureRecognizer:tap];
    }
    return _m_btn_img;
}


- (CWUBLabelWithModel *)m_lbl_right{

    if (!_m_lbl_right) {
        _m_lbl_right = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title];
        _m_lbl_right.textAlignment = NSTextAlignmentRight;
        _m_lbl_right.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_right.numberOfLines = 0;

        [_m_lbl_right setUserInteractionEnabled:YES];
        UITapGestureRecognizer * tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_agree)];
        [_m_lbl_right addGestureRecognizer:tap];
    }
    return _m_lbl_right;
}

- (UIButton *)m_btn_right{

    if (!_m_btn_right) {
        _m_btn_right = [[UIButton alloc] init];
        [_m_btn_right setTitle:self.m_model.m_button_title.m_text forState:UIControlStateNormal];
        [_m_btn_right.titleLabel setFont:self.m_model.m_button_title.m_font];
        [_m_btn_right.titleLabel setTextColor:self.m_model.m_button_title.m_color];
        [_m_btn_right setTitleColor:self.m_model.m_button_title.m_color forState:UIControlStateNormal];
        [_m_btn_right addTarget:self action:@selector(event_btn_protocol) forControlEvents:UIControlEventTouchUpInside];

    }
    return _m_btn_right;
}

- (void) interface_updateWithModel:(CWUBCell_ButtonRight_TitleRight_ButtonRight_Model*)model{

    self.m_model = model;
    [_m_btn_right setTitle:self.m_model.m_button_title.m_text forState:UIControlStateNormal];
    [_m_btn_right.titleLabel setFont:self.m_model.m_button_title.m_font];
    [_m_btn_right.titleLabel setTextColor:self.m_model.m_button_title.m_color];
    [_m_btn_right setTitleColor:self.m_model.m_button_title.m_color forState:UIControlStateNormal];
    [_m_lbl_right interface_update:self.m_model.m_title];
    [_m_btn_img setImage:[UIImage imageNamed:self.m_model.m_button_img] forState:UIControlStateNormal];
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self func_updateConsrtains];
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件
- (void)event_btn_protocol{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate_Protocol)]) {

        [self.delegate CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate_Protocol];
    }
}

- (void)event_agree{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate_Agree)]) {

        [self.delegate CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate_Agree];
    }
}

@end



