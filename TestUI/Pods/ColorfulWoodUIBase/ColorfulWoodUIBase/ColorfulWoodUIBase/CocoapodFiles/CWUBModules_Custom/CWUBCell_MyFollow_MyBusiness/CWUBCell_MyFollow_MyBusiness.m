//
//  CWUBCell_MyFollow_MyBusiness.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_MyFollow_MyBusiness.h"
#import "CWUBLabelWithModel.h"

@interface CWUBCell_MyFollow_MyBusiness()

@property (nonatomic, strong) UIView *m_leftBottom;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_leftTop;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_leftBottom;
@property (nonatomic, strong) UIImageView * m_img_leftBottom;

@property (nonatomic, strong) UIView *m_rightBottom;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightTop;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) UIImageView * m_img_rightBottom;




@end

@implementation CWUBCell_MyFollow_MyBusiness

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_MyFollow_MyBusiness_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_MyFollow_MyBusiness_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_MyFollow_MyBusiness_Model*)model{

    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    [self func_initWithSubViews];
}

- (void) func_initWithSubViews{

    [self addSubview:self.m_lbl_leftTop];
    [self addSubview:self.m_leftBottom];
    [self.m_leftBottom addSubview:self.m_lbl_leftBottom];
    [self.m_leftBottom addSubview:self.m_img_leftBottom];

    [self addSubview:self.m_lbl_rightTop];
    [self addSubview:self.m_rightBottom];
    [self.m_rightBottom addSubview:self.m_lbl_rightBottom];
    [self.m_rightBottom addSubview:self.m_img_rightBottom];

    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{

    [_m_lbl_leftTop mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).offset(self.m_model.m_title_left_top.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_title_left_top.m_margin_left);
        make.right.equalTo(self.mas_centerX);
    }];

    [_m_leftBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_leftTop).offset(self.m_model.m_title_left_bottom.m_margin_top);
        make.centerX.equalTo(self.m_lbl_leftTop);
        make.bottom.equalTo(self.m_img_sep).offset(-self.m_model.m_img_left_bottom.m_margin_bottom);
    }];

    [_m_img_leftBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_leftBottom);
        make.centerY.equalTo(self.m_lbl_leftBottom);
        make.width.equalTo(@(self.m_model.m_img_left_bottom.m_width));
        make.height.equalTo(@(self.m_model.m_img_left_bottom.m_height));
    }];

    [_m_lbl_leftBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_img_leftBottom.mas_right).offset(self.m_model.m_title_left_bottom.m_margin_left);
        make.top.equalTo(self.m_lbl_rightTop.mas_bottom).offset(self.m_model.m_title_left_bottom.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_left_bottom.m_margin_bottom);
        make.right.equalTo(self.m_leftBottom);
        make.width.mas_lessThanOrEqualTo(CWUBDefineDeviceWidth/3.);
    }];

    [_m_lbl_rightTop mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(self.m_lbl_leftTop);
        make.left.equalTo(self.mas_centerX);
        make.right.equalTo(self).offset(-self.m_model.m_title_right_top.m_margin_right);
    }];

    [_m_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.m_lbl_rightTop).offset(self.m_model.m_title_right_bottom.m_margin_top);
        make.centerX.equalTo(self.m_lbl_rightTop);
        make.bottom.equalTo(self.m_img_sep).offset(-self.m_model.m_img_right_bottom.m_margin_bottom);
    }];

    [_m_img_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_rightBottom);
        make.centerY.equalTo(self.m_lbl_rightBottom);
        make.width.equalTo(@(self.m_model.m_img_right_bottom.m_width));
        make.height.equalTo(@(self.m_model.m_img_right_bottom.m_height));
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_img_rightBottom.mas_right).offset(self.m_model.m_title_right_bottom.m_margin_left);
        make.top.equalTo(self.m_lbl_rightTop.mas_bottom).offset(self.m_model.m_title_right_bottom.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_title_right_bottom.m_margin_bottom);
        make.right.equalTo(self.m_rightBottom);
        make.width.mas_lessThanOrEqualTo(CWUBDefineDeviceWidth/3.);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_lbl_rightBottom.mas_bottom).offset(self.m_model.m_title_right_bottom.m_margin_bottom);
    }];
}

#pragma mark - 属性
- (CWUBCell_MyFollow_MyBusiness_Model*)m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_MyFollow_MyBusiness_Model new];
    }

    return _m_model;
}

- (UIView*)m_leftBottom{

    if (!_m_leftBottom) {
        _m_leftBottom = [UIView new];

        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_left)];
        [_m_leftBottom addGestureRecognizer:tap];
    }
    return _m_leftBottom;
}

- (UIView*)m_rightBottom{

    if (!_m_rightBottom) {
        _m_rightBottom = [UIView new];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_right)];
        [_m_rightBottom addGestureRecognizer:tap];
    }
    return _m_rightBottom;
}

- (CWUBLabelWithModel *)m_lbl_leftTop{

    if (!_m_lbl_leftTop) {
        _m_lbl_leftTop = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_left_top];
        _m_lbl_leftTop.textAlignment = NSTextAlignmentCenter;
        _m_lbl_leftTop.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_leftTop.numberOfLines = 0;
        _m_lbl_leftTop.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_left)];
        [_m_lbl_leftTop addGestureRecognizer:tap];
    }
    return _m_lbl_leftTop;
}

- (CWUBLabelWithModel *)m_lbl_leftBottom{

    if (!_m_lbl_leftBottom) {
        _m_lbl_leftBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_left_bottom];
        _m_lbl_leftBottom.textAlignment = NSTextAlignmentCenter;
        _m_lbl_leftBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_leftBottom.numberOfLines = 0;
    }
    return _m_lbl_leftBottom;
}

-(UIImageView *)m_img_leftBottom{

    if(!_m_img_leftBottom){
        _m_img_leftBottom = [UIImageView new];
        [_m_img_leftBottom setImage:[UIImage imageNamed:self.m_model.m_img_left_bottom.m_imgName]];
        _m_img_leftBottom.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_leftBottom.clipsToBounds = NO;
        [_m_img_leftBottom setClipsToBounds:NO];
        [_m_img_leftBottom setUserInteractionEnabled:YES];

        if (self.m_model.m_img_left_bottom.m_isCircle) {
            _m_img_leftBottom.layer.cornerRadius = self.m_model.m_img_left_bottom.m_width/2.;
            _m_img_leftBottom.layer.masksToBounds = YES;
            _m_img_leftBottom.clipsToBounds = YES;
            [_m_img_leftBottom setClipsToBounds:YES];
        }
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_imgLeft)];
        [_m_img_leftBottom addGestureRecognizer:tapGesturRecognizer];
    }
    return _m_img_leftBottom;
}

-(UIImageView *)m_img_rightBottom{

    if(!_m_img_rightBottom){
        _m_img_rightBottom = [UIImageView new];
        [_m_img_rightBottom setImage:[UIImage imageNamed:self.m_model.m_img_right_bottom.m_imgName]];
        _m_img_rightBottom.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_rightBottom.clipsToBounds = NO;
        [_m_img_rightBottom setClipsToBounds:NO];
        [_m_img_rightBottom setUserInteractionEnabled:YES];

        if (self.m_model.m_img_right_bottom.m_isCircle) {
            _m_img_rightBottom.layer.cornerRadius = self.m_model.m_img_right_bottom.m_width/2.;
            _m_img_rightBottom.layer.masksToBounds = YES;
            _m_img_rightBottom.clipsToBounds = YES;
            [_m_img_rightBottom setClipsToBounds:YES];
        }
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_imgRight)];
        [_m_img_rightBottom addGestureRecognizer:tapGesturRecognizer];
    }
    return _m_img_rightBottom;
}

- (CWUBLabelWithModel *)m_lbl_rightTop{

    if (!_m_lbl_rightTop) {
        _m_lbl_rightTop = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_right_top];
        _m_lbl_rightTop.textAlignment = NSTextAlignmentCenter;
        _m_lbl_rightTop.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightTop.numberOfLines = 0;
        _m_lbl_rightTop.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event_right)];
        [_m_lbl_rightTop addGestureRecognizer:tap];
    }
    return _m_lbl_rightTop;
}

- (CWUBLabelWithModel *)m_lbl_rightBottom{

    if (!_m_lbl_rightBottom) {
        _m_lbl_rightBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_right_bottom];
        _m_lbl_rightBottom.textAlignment = NSTextAlignmentCenter;
        _m_lbl_rightBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightBottom.numberOfLines = 0;
    }
    return _m_lbl_rightBottom;
}

- (void) interface_updateWithModel:(CWUBCell_MyFollow_MyBusiness_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    [self.m_lbl_rightTop interface_update:model.m_title_right_top];
    [self.m_lbl_leftTop interface_update:model.m_title_left_top];
    [self.m_lbl_leftBottom interface_update:model.m_title_left_bottom];
    [self.m_lbl_rightBottom interface_update:model.m_title_right_bottom];
    [self.m_img_leftBottom setImage:[UIImage imageNamed:self.m_model.m_img_left_bottom.m_imgName]];
    [self.m_img_rightBottom setImage:[UIImage imageNamed:self.m_model.m_img_right_bottom.m_imgName]];
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

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件
- (void)event_imgLeft{
    //    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Delete_Delegate_Del:)]) {
    //
    //        [self.delegate CWUBCell_Passenger_Delete_Delegate_Del:self.m_model.m_id];
    //    }
}

- (void)event_imgRight{

//    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Delete_Delegate_Del:)]) {
//
//        [self.delegate CWUBCell_Passenger_Delete_Delegate_Del:self.m_model.m_id];
//    }
}

- (void)event_left{

        if ([self.delegate respondsToSelector:@selector(CWUBCell_MyFollow_MyBusinessDelegate_left)]) {

            [self.delegate CWUBCell_MyFollow_MyBusinessDelegate_left];
        }
}

- (void)event_right{
    
    if ([self.delegate respondsToSelector:@selector(CWUBCell_MyFollow_MyBusinessDelegate_right)]) {

        [self.delegate CWUBCell_MyFollow_MyBusinessDelegate_right];
    }
}
@end
