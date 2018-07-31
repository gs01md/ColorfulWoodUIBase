//
//  CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom.h"
#import "CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

#define Img_Top_Reduce -10

@interface CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom()
/**
 * 用于显示一个圆角浮层
 */
@property (nonatomic, strong) CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom *m_back;
@property (nonatomic, strong) UIImageView * m_img_top;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_center;

/**
 * 底部容器，包含三项后，整体居中显示
 */
@property (nonatomic, strong) UIView *m_backBottom;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottomLeft;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottomCenter;
@property (nonatomic, strong) UIImageView *m_img_bottomRight;


@end

@implementation CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model*)model{

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

    self.backgroundColor = [UIColor clearColor];

    [self addSubview:self.m_back];

    [self.m_back addSubview:self.m_lbl_center];
    [self.m_back addSubview:self.m_img_top];

    [self.m_back addSubview:self.m_backBottom];
    [self.m_backBottom addSubview:self.m_lbl_bottomLeft];
    [self.m_backBottom addSubview:self.m_lbl_bottomCenter];
    [self.m_backBottom addSubview:self.m_img_bottomRight];

    [self.m_back addSubview:self.m_img_sep];

    [self func_updateConsrtains];
}

- (void)func_updateConsrtains{
    
    [_m_back mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_back.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_back.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_back.m_margin_right);
        make.bottom.equalTo(self.m_img_sep).offset(-1.);
    }];

    [_m_img_top mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_back).offset(-Img_Top_Reduce/1.5);
        make.centerX.equalTo(self);
        make.width.equalTo(@(self.m_model.m_img_top.m_width + Img_Top_Reduce));
        make.height.equalTo(@(self.m_model.m_img_top.m_height + Img_Top_Reduce));
    }];


    [_m_lbl_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.m_img_top.mas_bottom).offset(self.m_model.m_title_center.m_margin_top);
        make.bottom.equalTo(self.m_backBottom.mas_top).offset(-self.m_model.m_title_center.m_margin_bottom);
        make.left.equalTo(self.m_back).offset(self.m_model.m_title_center.m_margin_left);
        make.right.equalTo(self.m_back).offset(-self.m_model.m_title_center.m_margin_right);
    }];

    [_m_lbl_bottomLeft mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_backBottom);
        make.top.equalTo(self.m_backBottom);
        make.bottom.equalTo(self.m_backBottom);
    }];

    [_m_lbl_bottomCenter mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_lbl_bottomLeft.mas_right).offset(self.m_model.m_img_bottomRight.m_margin_left);
        make.centerY.equalTo(self.m_lbl_bottomLeft);
    }];

    [_m_img_bottomRight mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_lbl_bottomCenter.mas_right).offset(self.m_model.m_img_bottomRight.m_margin_left);
        make.right.equalTo(self.m_backBottom);
        make.centerY.equalTo(self.m_lbl_bottomLeft);
        make.width.equalTo(@(self.m_model.m_img_bottomRight.m_width));
        make.height.equalTo(@(self.m_model.m_img_bottomRight.m_height));

    }];

    [_m_backBottom mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self.m_lbl_center.mas_bottom).offset(self.m_model.m_title_bottomLeft.m_margin_top);
        make.bottom.equalTo(self.m_img_sep).offset(-self.m_model.m_title_bottomLeft.m_margin_bottom);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_back.mas_bottom).offset(1.);
    }];

}

#pragma mark - 属性
-(CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model new];
    }

    return _m_model;
}

- (CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom *)m_back{

    if (!_m_back) {
        _m_back = [[CWUBView_ImgTop_TitleCenter_TitleTitleImgBottom alloc] initWithModel:self.m_model];
        _m_back.clipsToBounds = YES;
        _m_back.backgroundColor = self.m_model.m_back.m_color_background;
    }

    return _m_back;
}

- (UIView *)m_backBottom{

    if (!_m_backBottom) {
        _m_backBottom = [UIView new];
    }

    return _m_backBottom;
}

- (CWUBLabelWithModel *)m_lbl_center{

    if (!_m_lbl_center) {
        _m_lbl_center = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_center];
        _m_lbl_center.textAlignment = NSTextAlignmentCenter;
        _m_lbl_center.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_center.numberOfLines = 0;
    }
    return _m_lbl_center;
}

- (CWUBLabelWithModel *)m_lbl_bottomLeft{

    if (!_m_lbl_bottomLeft) {
        _m_lbl_bottomLeft = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottomLeft];
        _m_lbl_bottomLeft.textAlignment = NSTextAlignmentLeft;
        _m_lbl_bottomLeft.lineBreakMode = NSLineBreakByCharWrapping;
        _m_lbl_bottomLeft.numberOfLines = 0;
    }

    return _m_lbl_bottomLeft;
}

- (CWUBLabelWithModel *)m_lbl_bottomCenter{

    if (!_m_lbl_bottomCenter) {
        _m_lbl_bottomCenter = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_bottomCenter];
        _m_lbl_bottomCenter.textAlignment = NSTextAlignmentLeft;
        _m_lbl_bottomCenter.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_bottomCenter.numberOfLines = 0;
    }
    return _m_lbl_bottomCenter;
}

-(UIImageView *)m_img_top{

    if(!_m_img_top){
        _m_img_top = [UIImageView new];
        [_m_img_top setImage:[UIImage imageNamed:self.m_model.m_img_top.m_imgName]];
        _m_img_top.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_top.clipsToBounds = YES;
        [_m_img_top setClipsToBounds:YES];
        [_m_img_top setUserInteractionEnabled:YES];

        if (self.m_model.m_img_top.m_isCircle) {
            _m_img_top.layer.cornerRadius = (self.m_model.m_img_top.m_width + Img_Top_Reduce)/2.;
            _m_img_top.layer.masksToBounds = YES;
        }
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_imgLeft)];
        [_m_img_top addGestureRecognizer:tapGesturRecognizer];
    }
    return _m_img_top;
}

-(UIImageView *)m_img_bottomRight{

    if(!_m_img_bottomRight){
        _m_img_bottomRight = [UIImageView new];
        [_m_img_bottomRight setImage:[UIImage imageNamed:self.m_model.m_img_bottomRight.m_imgName]];
        _m_img_bottomRight.contentMode = UIViewContentModeScaleToFill;
        _m_img_bottomRight.clipsToBounds = YES;
        [_m_img_bottomRight setClipsToBounds:YES];
        [_m_img_bottomRight setUserInteractionEnabled:YES];
    }
    return _m_img_bottomRight;
}

- (void) interface_updateWithModel:(CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    [self.m_lbl_center interface_update:model.m_title_center];
    [self.m_lbl_bottomLeft interface_update:model.m_title_bottomLeft];
    [self.m_lbl_bottomCenter interface_update:model.m_title_bottomCenter];
    [self.m_img_top setImage:[UIImage imageNamed:self.m_model.m_img_top.m_imgName]];
    [self.m_img_bottomRight setImage:[UIImage imageNamed:self.m_model.m_img_bottomRight.m_imgName]];

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
- (void)event_imgLeft{
    //    if ([self.delegate respondsToSelector:@selector(CWUBCell_Passenger_Delete_Delegate_Del:)]) {
    //
    //        [self.delegate CWUBCell_Passenger_Delete_Delegate_Del:self.m_model.m_id];
    //    }
}
@end

