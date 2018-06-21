//
//  CWUBCellTrip.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Trip.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

#define CENTER_SPACE_RADIO 1.5

@interface CWUBCell_Trip()



/**
 * 出发时间标题
 */
@property (nonatomic, strong) CWUBLabelWithModel* m_lbl_startDateTime_title;

/**
 * 出发时间
 */
@property (nonatomic, strong) CWUBLabelWithModel* m_lbl_startDateTime;

/**
 * 出发地
 */
@property (nonatomic, strong) CWUBLabelWithModel* m_lbl_startCity;

/**
 * 目的地
 */
@property (nonatomic, strong) CWUBLabelWithModel* m_lbl_arrivialCity;

/**
 * 行程时长
 */
@property (nonatomic, strong) CWUBLabelWithModel* m_lbl_flyingHours;

/**
 * 行程时长 ---- 经停地 的分割线
 */
@property (nonatomic, strong) UILabel* m_lbl_sep;

/**
 * 经停地
 */
@property (nonatomic, strong) CWUBLabelWithModel* m_lbl_passers;

/**
 * 分割线
 */
@property (nonatomic, strong) UIImageView* m_img_sep;

/**
 * 行程视图
 */
@property (nonatomic, strong) UIView* m_viewTrip;
@end

@implementation CWUBCell_Trip

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Trip_Model*)model{

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

    [self addSubview:self.m_lbl_startDateTime_title];
    [self addSubview:self.m_lbl_startDateTime];
    [self addSubview:self.m_lbl_startCity];
    [self addSubview:self.m_lbl_arrivialCity];
    [self addSubview:self.m_lbl_flyingHours];
    [self addSubview:self.m_lbl_sep];
    [self addSubview:self.m_lbl_passers];
    [self addSubview:self.m_img_sep];

    [_m_lbl_startDateTime_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.height.equalTo(@(20.));
        //make.bottom.equalTo(_m_lbl_startCity.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical*3.);
        make.width.equalTo(@(CWUBBaseViewConfig_Width_Title_Default));
    }];

    [_m_lbl_startDateTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.height.equalTo(self.m_lbl_startDateTime_title);
        //make.bottom.equalTo(_m_lbl_flyingHours.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lbl_startDateTime_title.mas_right).offset(CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
    }];

    [_m_lbl_flyingHours mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical*3);
        make.bottom.equalTo(self.m_lbl_sep.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical/CENTER_SPACE_RADIO);
        make.width.equalTo(@(CWUBDefineSViewWidth/4.));
        make.centerX.equalTo(self);
    }];

    if (self.m_model.m_fly_type == CWUBCell_Trip_Model_TripType_Task) {
        [_m_lbl_sep mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
            make.width.equalTo(@(CWUBDefineSViewWidth/4.));
            make.centerX.equalTo(self);
            make.top.equalTo(self.m_lbl_flyingHours.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/CENTER_SPACE_RADIO);
        }];
    } else {
        [_m_lbl_sep mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(20.));
            make.width.equalTo(@(80.));
            make.centerX.equalTo(self);
            make.top.equalTo(self.m_lbl_flyingHours.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/CENTER_SPACE_RADIO);
        }];
    }

    [_m_lbl_passers mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(CWUBDefineSViewWidth/4.));
        make.centerX.equalTo(self);
        make.top.equalTo(self.m_lbl_sep.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/CENTER_SPACE_RADIO);
        make.bottom.equalTo(self.m_img_sep.mas_bottom).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
    }];


    [_m_lbl_startCity mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.greaterThanOrEqualTo(_m_lbl_startDateTime.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical*2);
//        make.bottom.greaterThanOrEqualTo(self).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.right.equalTo(self.m_lbl_sep.mas_left).offset(-CWUBBaseViewConfig_Space_Side_Horizontal/2.);
        make.centerY.equalTo(self.m_lbl_sep);
    }];



    [_m_lbl_arrivialCity mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.greaterThanOrEqualTo(_m_lbl_startDateTime.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical*2);
//        make.bottom.greaterThanOrEqualTo(self).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
        make.left.equalTo(self.m_lbl_sep.mas_right).offset(CWUBBaseViewConfig_Space_Side_Horizontal/2.);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.centerY.equalTo(self.m_lbl_sep);
    }];




    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_arrivialCity.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];
}

-(CWUBCell_Trip_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Trip_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_startDateTime_title{

    if (!_m_lbl_startDateTime_title) {
        _m_lbl_startDateTime_title = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_startDateTime_title];
        _m_lbl_startDateTime_title.textAlignment = NSTextAlignmentLeft;
        _m_lbl_startDateTime_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_startDateTime_title.numberOfLines = 0;
    }

    return _m_lbl_startDateTime_title;
}

- (CWUBLabelWithModel *)m_lbl_startDateTime{

    if (!_m_lbl_startDateTime) {
        _m_lbl_startDateTime = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_startDateTime];
        _m_lbl_startDateTime.textAlignment = NSTextAlignmentRight;
        _m_lbl_startDateTime.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_startDateTime.numberOfLines = 0;
    }

    return _m_lbl_startDateTime;
}

- (CWUBLabelWithModel *)m_lbl_startCity{

    if (!_m_lbl_startCity) {
        _m_lbl_startCity = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_startCity];
        _m_lbl_startCity.textAlignment = NSTextAlignmentLeft;
        _m_lbl_startCity.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_startCity.numberOfLines = 0;
    }

    return _m_lbl_startCity;
}

- (CWUBLabelWithModel *)m_lbl_arrivialCity{

    if (!_m_lbl_arrivialCity) {
        _m_lbl_arrivialCity = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_arrivialCity];
        _m_lbl_arrivialCity.textAlignment = NSTextAlignmentRight;
        _m_lbl_arrivialCity.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_arrivialCity.numberOfLines = 0;
    }

    return _m_lbl_arrivialCity;
}

- (CWUBLabelWithModel *)m_lbl_flyingHours{

    if (!_m_lbl_flyingHours) {
        _m_lbl_flyingHours = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_flyingHours];
        _m_lbl_flyingHours.textAlignment = NSTextAlignmentCenter;
        _m_lbl_flyingHours.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_flyingHours.numberOfLines = 0;
    }

    return _m_lbl_flyingHours;
}

- (CWUBLabelWithModel *)m_lbl_passers{

    if (!_m_lbl_passers) {
        _m_lbl_passers = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_passers];
        _m_lbl_passers.textAlignment = NSTextAlignmentCenter;
        _m_lbl_passers.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_passers.numberOfLines = 0;
    }

    return _m_lbl_passers;
}

- (UILabel *)m_lbl_sep{

    if (!_m_lbl_sep) {
        _m_lbl_sep = [UILabel new];
        _m_lbl_sep.backgroundColor = [CWUBDefine colorBlueDeep];
        _m_lbl_sep.text = @"调 机";
        _m_lbl_sep.textAlignment = NSTextAlignmentCenter;
        _m_lbl_sep.font = [CWUBDefine fontBig];
        _m_lbl_sep.textColor = [UIColor whiteColor];
        _m_lbl_sep.layer.cornerRadius = 10.;
        _m_lbl_sep.layer.borderWidth = 1.;
        _m_lbl_sep.clipsToBounds = YES;
    }

    return _m_lbl_sep;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

-(UIView *)m_viewTrip{

    if(!_m_viewTrip){
        _m_viewTrip = [UIView new];
    }

    return _m_viewTrip;
}



- (void) interface_updateWithModel:(CWUBCell_Trip_Model*)model{

    self.m_model = model;
    
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self.m_lbl_startDateTime_title interface_update:model.m_startDateTime_title];
    [self.m_lbl_startDateTime interface_update:model.m_startDateTime];
    [self.m_lbl_startCity interface_update:model.m_startCity];
    [self.m_lbl_arrivialCity interface_update:model.m_arrivialCity];
    [self.m_lbl_flyingHours interface_update:model.m_flyingHours];
    [self.m_lbl_passers interface_update:model.m_passers];

}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end

