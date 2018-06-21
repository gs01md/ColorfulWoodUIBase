//
//  CWUBCell_CharterDetail_Opt.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/26.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_CharterDetail_Opt.h"
#import "CWUBDefine.h"

#define VEHICAL_MARGIN CWUBDefine_Width(10.)

@interface CWUBCell_CharterDetail_Opt()

@property (nonatomic, strong) UIButton *m_btn_first;
@property (nonatomic, strong) UIButton *m_btn_second;

@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_CharterDetail_Opt

-(id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_CharterDetail_Opt_Model*)model{

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

-(id) initWithFrame:(CGRect)frame model:(CWUBCell_CharterDetail_Opt_Model*)model{

    if (self = [super initWithFrame:frame]) {
        self.m_model = model;
        [self initWithSubViews];
    }

    return self;
}

-(void) initWithSubViews{

    [self addSubview:self.m_btn_first];
    [self addSubview:self.m_btn_second];
    [self addSubview:self.m_img_sep];

    [_m_btn_second mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(VEHICAL_MARGIN);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-VEHICAL_MARGIN);
        make.width.equalTo(@(100));
        make.height.equalTo(@(30));
    }];

    [_m_btn_first mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.m_btn_second);
        make.right.equalTo(self.m_btn_second.mas_left).offset(-CWUBBaseViewConfig_Space_Side_Horizontal/2.);
        make.width.equalTo(self.m_btn_second);
        make.height.equalTo(self.m_btn_second);
    }];


    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_btn_second.mas_bottom).offset(VEHICAL_MARGIN);
    }];
}

- (UIButton *)m_btn_first{

    if (!_m_btn_first) {
        _m_btn_first = [UIButton new];
        [_m_btn_first setTitle:@"" forState:UIControlStateNormal];
        //[_m_btn_first setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _m_btn_first.layer.cornerRadius = 5.;
        _m_btn_first.layer.borderWidth = 0.5;
        _m_btn_first.clipsToBounds = YES;
        [_m_btn_first.titleLabel setFont:[CWUBDefine fontOptButton]];
        [_m_btn_first setHidden:YES];
        [_m_btn_first addTarget:self action:@selector(event_first) forControlEvents:UIControlEventTouchUpInside];

    }
    return _m_btn_first;
}

- (UIButton *)m_btn_second{

    if (!_m_btn_second) {
        _m_btn_second = [UIButton new];
        [_m_btn_second setTitle:@"" forState:UIControlStateNormal];
        //        [_m_btn_save setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //_m_btn_second.backgroundColor = [CWUBDefine colorBlueDeep];
        _m_btn_second.layer.cornerRadius = 5.;
        _m_btn_second.layer.borderWidth = 1.;
        _m_btn_second.clipsToBounds = YES;
        [_m_btn_second.titleLabel setFont:[CWUBDefine fontOptButton]];
        [_m_btn_second setHidden:YES];
        [_m_btn_second addTarget:self action:@selector(event_second) forControlEvents:UIControlEventTouchUpInside];
    }

    return _m_btn_second;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_CharterDetail_Opt_Model*)model{

    self.m_model = model;

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }

    if (model && model.m_info_first) {
        [_m_btn_first setTitle:model.m_info_first.m_text forState:UIControlStateNormal];
        [_m_btn_first setTitleColor:model.m_info_first.m_color forState:UIControlStateNormal];
        [_m_btn_first.titleLabel setFont:model.m_info_first.m_font];
        [_m_btn_first setBackgroundColor:model.m_info_first.m_color_backGroud];
        [_m_btn_first.titleLabel setTextColor:model.m_info_first.m_color];


        if (model.m_info_first.m_isHidden) {
            [_m_btn_first setHidden:YES];
        }else{
            [_m_btn_first setHidden:NO];
        }
    }else{
        [_m_btn_first setHidden:YES];
    }

    if (model && model.m_info_second) {
        [_m_btn_second setTitle:model.m_info_second.m_text forState:UIControlStateNormal];
        [_m_btn_second setTitleColor:model.m_info_second.m_color forState:UIControlStateNormal];
        [_m_btn_second.titleLabel setFont:model.m_info_second.m_font];
        [_m_btn_second setBackgroundColor:model.m_info_second.m_color_backGroud];
        [_m_btn_second.titleLabel setTextColor:model.m_info_second.m_color];

        if (model.m_info_second.m_isHidden) {
            [_m_btn_second setHidden:YES];
        }else{
            [_m_btn_second setHidden:NO];
        }
    }else{
        [_m_btn_second setHidden:YES];
    }
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)event_first{
    if ([self.delegate respondsToSelector:@selector(CWUBCell_CharterDetail_Opt_Delegate_First)]) {

        [self.delegate CWUBCell_CharterDetail_Opt_Delegate_First];
    }
}

- (void)event_second{
    if ([self.delegate respondsToSelector:@selector(CWUBCell_CharterDetail_Opt_Delegate_Second)]) {

        [self.delegate CWUBCell_CharterDetail_Opt_Delegate_Second];
    }
}


@end

