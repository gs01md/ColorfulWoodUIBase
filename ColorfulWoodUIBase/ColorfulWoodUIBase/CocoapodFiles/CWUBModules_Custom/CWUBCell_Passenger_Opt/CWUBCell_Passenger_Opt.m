//
//  CWUBCell_Passenger_Opt.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Passenger_Opt.h"

@interface CWUBCell_Passenger_Opt()

@property (nonatomic, strong) UIButton *m_btn_cancle;
@property (nonatomic, strong) UIButton *m_btn_save;


@end

@implementation CWUBCell_Passenger_Opt

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Passenger_Opt_Model*)model{

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

    [self addSubview:self.m_btn_cancle];
    [self addSubview:self.m_btn_save];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_btn_save mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical*2);
        make.width.equalTo(@(100));
        make.height.equalTo(@(30));
    }];

    [_m_btn_cancle mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.m_btn_save);
        make.right.equalTo(self.m_btn_save.mas_left).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(self.m_btn_save);
        make.height.equalTo(self.m_btn_save);
    }];


    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_btn_save.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

#pragma mark - 属性
- (UIButton *)m_btn_cancle{

    if (!_m_btn_cancle) {
        _m_btn_cancle = [UIButton new];
        [_m_btn_cancle setTitle:@"取 消" forState:UIControlStateNormal];
        [_m_btn_cancle setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _m_btn_cancle.layer.cornerRadius = 5.;
        _m_btn_cancle.layer.borderWidth = 0.5;
        _m_btn_cancle.clipsToBounds = YES;
        [_m_btn_cancle.titleLabel setFont:[CWUBDefine fontOptButton]];

        [_m_btn_cancle addTarget:self action:@selector(event_cancel) forControlEvents:UIControlEventTouchUpInside];

    }
    return _m_btn_cancle;
}

- (UIButton *)m_btn_save{

    if (!_m_btn_save) {
        _m_btn_save = [UIButton new];
        [_m_btn_save setTitle:@"保 存" forState:UIControlStateNormal];
//        [_m_btn_save setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _m_btn_save.backgroundColor = [CWUBDefine colorBlueDeep];
        _m_btn_save.layer.cornerRadius = 5.;
        _m_btn_save.layer.borderWidth = 1.;
        _m_btn_save.clipsToBounds = YES;
        [_m_btn_save.titleLabel setFont:[CWUBDefine fontOptButton]];

        [_m_btn_save addTarget:self action:@selector(event_save) forControlEvents:UIControlEventTouchUpInside];
    }

    return _m_btn_save;
}

- (void) interface_updateWithModel:(CWUBCell_Passenger_Opt_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
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

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 事件

- (void)event_cancel{
    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Opt_Delegate_cancel)]) {

        [self.delegate CWUBCell_Passenger_Opt_Delegate_cancel];
    }
}

- (void)event_save{
    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Opt_Delegate_save)]) {

        [self.delegate CWUBCell_Passenger_Opt_Delegate_save];
    }
}
@end

