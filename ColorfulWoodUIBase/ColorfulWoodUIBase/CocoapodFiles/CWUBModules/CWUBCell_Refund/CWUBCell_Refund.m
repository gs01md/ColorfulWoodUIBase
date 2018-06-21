//
//  CWUBCell_Refund.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Refund.h"
#import "CWUBLabelWithModel.h"

#define CIRCLE_SEP_WIDTH 7.

@interface CWUBCell_Refund()

/**
 * 小圆点，颜色取自标题颜色
 */
@property (nonatomic, strong) UILabel *m_lbl_circle;

/**
 * 竖线，颜色取自标题颜色
 */
@property (nonatomic, strong) UILabel *m_lbl_vertical;

/**
 * 状态说明标题
 */
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_title;
/**
 * 状态说明文字
 */
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_info;
/**
 * 状态变更时间
 */
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_time;

@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_Refund

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Refund_Model*)model{

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

    [self addSubview:self.m_lbl_circle];
    [self addSubview:self.m_lbl_vertical];

    [self addSubview:self.m_lbl_title];
    [self addSubview:self.m_lbl_info];
    [self addSubview:self.m_lbl_time];
    [self addSubview:self.m_img_sep];

    [_m_lbl_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal+CWUBBaseViewConfig_Space_Element_Horizontal);
        make.right.equalTo(self).offset(-CWUBBaseViewConfig_Space_Side_Horizontal);
        make.top.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Vertical);
        make.bottom.equalTo(self.m_lbl_info.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical/2.);
    }];

    [_m_lbl_info mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_lbl_title);
        make.right.equalTo(self.m_lbl_title);
        make.top.equalTo(self.m_lbl_title.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/2.);
        make.bottom.equalTo(self.m_lbl_time.mas_top).offset(-CWUBBaseViewConfig_Space_Side_Vertical/2.);
    }];

    [_m_lbl_time mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_lbl_title);
        make.right.equalTo(self.m_lbl_title);
        make.top.equalTo(self.m_lbl_info.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical/2.);
        make.bottom.equalTo(self.m_img_sep).offset(-CWUBBaseViewConfig_Space_Side_Vertical);
    }];

    [_m_lbl_circle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(CWUBBaseViewConfig_Space_Side_Horizontal);
        make.width.equalTo(@(CIRCLE_SEP_WIDTH));
        make.height.equalTo(@(CIRCLE_SEP_WIDTH));
        make.centerY.equalTo(self.m_lbl_title);
    }];

    [_m_img_sep mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        //make.top.equalTo(_m_lbl_time.mas_bottom).offset(CWUBBaseViewConfig_Space_Side_Vertical);
    }];

    [_m_lbl_vertical mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.m_lbl_circle);
        make.top.equalTo(self.m_lbl_info).offset(4.);
        make.width.equalTo(@(1));
        make.bottom.equalTo(self);
    }];

}

-(CWUBCell_Refund_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Refund_Model new];
    }

    return _m_model;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [UIImageView new];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (CWUBLabelWithModel *)m_lbl_title{

    if (!_m_lbl_title) {
        _m_lbl_title = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title];
        _m_lbl_title.textAlignment = NSTextAlignmentLeft;
        _m_lbl_title.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_title.numberOfLines = 0;
    }
    return _m_lbl_title;
}

- (CWUBLabelWithModel *)m_lbl_info{

    if (!_m_lbl_info) {
        _m_lbl_info = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_info];
        _m_lbl_info.textAlignment = NSTextAlignmentLeft;
        _m_lbl_info.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_info.numberOfLines = 0;
    }
    return _m_lbl_info;
}

- (CWUBLabelWithModel *)m_lbl_time{

    if (!_m_lbl_time) {
        _m_lbl_time = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_time];
        _m_lbl_time.textAlignment = NSTextAlignmentLeft;
        _m_lbl_time.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_time.numberOfLines = 0;
    }
    return _m_lbl_time;
}

- (UILabel *)m_lbl_circle{

    if (!_m_lbl_circle) {
        _m_lbl_circle = [UILabel new];
        _m_lbl_circle.backgroundColor = self.m_model.m_title.m_color;
        _m_lbl_circle.layer.cornerRadius = CIRCLE_SEP_WIDTH/2.;
        //_m_lbl_circle.layer.borderWidth = 1.;
        _m_lbl_circle.clipsToBounds = YES;
    }
    return _m_lbl_circle;
}

- (UILabel *)m_lbl_vertical{

    if (!_m_lbl_vertical) {
        _m_lbl_vertical = [UILabel new];
        _m_lbl_vertical.backgroundColor = self.m_model.m_title.m_color;

        if (self.m_model.m_type_show == CWUBCell_Refund_Model_Type_Start) {
            _m_lbl_vertical.hidden = YES;
        }
    }

    return _m_lbl_vertical;
}

- (void) interface_updateWithModel:(CWUBCell_Refund_Model*)model{

    self.m_model = model;

    [self.m_lbl_title interface_update:model.m_title];
    [self.m_lbl_info interface_update:model.m_info];
    [self.m_lbl_time interface_update:model.m_time];
    if (self.m_model.m_type_show == CWUBCell_Refund_Model_Type_Start) {
        _m_lbl_vertical.hidden = YES;
    }
    _m_lbl_vertical.backgroundColor = self.m_model.m_title.m_color;
    _m_lbl_circle.backgroundColor = self.m_model.m_title.m_color;
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

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
