//
//  CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo()
/**
 * 用于显示一个圆角浮层
 */
@property (nonatomic, strong) UIView *m_back;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_leftTop;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_leftBottom;
@property (nonatomic, strong) UIImageView * m_img_center;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightTop;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model*)model{

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

    [self addSubview:self.m_back];

    [self.m_back addSubview:self.m_lbl_leftTop];
    [self.m_back addSubview:self.m_lbl_leftBottom];
    [self.m_back addSubview:self.m_img_center];
    [self.m_back addSubview:self.m_lbl_rightTop];
    [self.m_back addSubview:self.m_lbl_rightBottom];
    [self.m_back addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_back mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_back.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_back.m_margin_right);
        make.top.equalTo(self);
        make.bottom.equalTo(self.m_img_sep).offset(-1.);
    }];

    [_m_lbl_leftTop mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_back).offset(self.m_model.m_title_leftTop.m_margin_top);
        make.bottom.equalTo(self.m_lbl_leftBottom.mas_top).offset(-self.m_model.m_title_leftTop.m_margin_bottom);
        make.centerX.equalTo(self.m_back.mas_right).dividedBy(4);
        make.width.equalTo(self.m_back.mas_width).dividedBy(3);
    }];

    [_m_lbl_leftBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_leftTop.mas_bottom).offset(self.m_model.m_title_leftBottom.m_margin_top);
        make.bottom.equalTo(self.m_back).offset(-self.m_model.m_title_leftBottom.m_margin_bottom);
        make.centerX.equalTo(self.m_lbl_leftTop);
        make.width.equalTo(self.m_lbl_leftTop);
    }];

    [_m_img_center mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerX.equalTo(self.m_back);
        make.centerY.equalTo(self.m_back);
        make.top.equalTo(self.m_back).offset(self.m_model.m_img_center.m_margin_top);
        make.bottom.equalTo(self.m_back).offset(-self.m_model.m_img_center.m_margin_bottom);
    }];

    [_m_lbl_rightTop mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_back).offset(self.m_model.m_title_rightTop.m_margin_top);
        make.bottom.equalTo(self.m_lbl_rightBottom.mas_top).offset(-self.m_model.m_title_rightTop.m_margin_bottom);
        make.centerX.equalTo(self.m_back.mas_right).dividedBy(1.35);
        make.width.equalTo(self.m_back.mas_width).dividedBy(3);
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_rightTop.mas_bottom).offset(self.m_model.m_title_rightBottom.m_margin_top);
        make.bottom.equalTo(self.m_back).offset(-self.m_model.m_title_rightBottom.m_margin_bottom);
        make.centerX.equalTo(self.m_lbl_rightTop);
        make.width.equalTo(self.m_lbl_rightTop);
    }];


    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_back.mas_bottom).offset(1.);
    }];
}

-(CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model new];
    }

    return _m_model;
}

- (UIView *)m_back{

    if (!_m_back) {
        _m_back = [UIView new];
        _m_back.layer.cornerRadius = 10.;
        _m_back.clipsToBounds = YES;
        _m_back.backgroundColor = self.m_model.m_back.m_color_background;
    }

    return _m_back;
}

- (CWUBLabelWithModel *)m_lbl_leftTop{

    if (!_m_lbl_leftTop) {
        _m_lbl_leftTop = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_leftTop];
        _m_lbl_leftTop.textAlignment = NSTextAlignmentCenter;
        _m_lbl_leftTop.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_leftTop.numberOfLines = 0;
    }
    return _m_lbl_leftTop;
}

- (CWUBLabelWithModel *)m_lbl_leftBottom{

    if (!_m_lbl_leftBottom) {
        _m_lbl_leftBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_leftBottom];
        _m_lbl_leftBottom.textAlignment = NSTextAlignmentCenter;
        _m_lbl_leftBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_leftBottom.numberOfLines = 0;
    }
    return _m_lbl_leftBottom;
}

-(UIImageView *)m_img_center{

    if(!_m_img_center){
        _m_img_center = [UIImageView new];
        [_m_img_center setImage:[UIImage imageNamed:self.m_model.m_img_center.m_imgName]];
        _m_img_center.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_center.clipsToBounds = NO;
        [_m_img_center setClipsToBounds:NO];
        [_m_img_center setUserInteractionEnabled:YES];

        if (self.m_model.m_img_center.m_isCircle) {
            _m_img_center.layer.cornerRadius = self.m_model.m_img_center.m_width/2.;
            _m_img_center.layer.masksToBounds = YES;
            _m_img_center.clipsToBounds = YES;
            [_m_img_center setClipsToBounds:YES];
        }
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_imgCenter)];
        [_m_img_center addGestureRecognizer:tapGesturRecognizer];
    }
    return _m_img_center;
}

- (CWUBLabelWithModel *)m_lbl_rightTop{

    if (!_m_lbl_rightTop) {
        _m_lbl_rightTop = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightTop];
        _m_lbl_rightTop.textAlignment = NSTextAlignmentCenter;
        _m_lbl_rightTop.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightTop.numberOfLines = 0;
    }
    return _m_lbl_rightTop;
}

- (CWUBLabelWithModel *)m_lbl_rightBottom{

    if (!_m_lbl_rightBottom) {
        _m_lbl_rightBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightBottom];
        _m_lbl_rightBottom.textAlignment = NSTextAlignmentCenter;
        _m_lbl_rightBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightBottom.numberOfLines = 0;
    }
    return _m_lbl_rightBottom;
}

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model*)model{

    self.m_model = model;
    [self.m_lbl_rightTop interface_update:model.m_title_rightTop];
    [self.m_lbl_leftTop interface_update:model.m_title_leftTop];
    [self.m_lbl_leftBottom interface_update:model.m_title_leftBottom];
    [self.m_lbl_rightBottom interface_update:model.m_title_rightBottom];
    [self.m_img_center setImage:[UIImage imageNamed:self.m_model.m_img_center.m_imgName]];

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
- (void)event_imgCenter{
    //    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Delete_Delegate_Del:)]) {
    //
    //        [self.delegate CWUBCell_Passenger_Delete_Delegate_Del:self.m_model.m_id];
    //    }
}
@end

