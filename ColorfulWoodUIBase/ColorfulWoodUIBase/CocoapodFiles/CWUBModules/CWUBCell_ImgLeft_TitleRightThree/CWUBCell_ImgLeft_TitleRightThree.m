//
//  CWUBCell_ImgLeft_TitleRightThree.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgLeft_TitleRightThree.h"
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_ImgLeft_TitleRightThree()
/**
 * 用于显示一个圆角浮层
 */
@property (nonatomic, strong) UIView *m_back;
@property (nonatomic, strong) UIImageView * m_img_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightTop;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightCenter;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_ImgLeft_TitleRightThree

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgLeft_TitleRightThree_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_ImgLeft_TitleRightThree_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_ImgLeft_TitleRightThree_Model*)model{

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

    self.backgroundColor = [UIColor clearColor];

    [self addSubview:self.m_back];

    [self.m_back addSubview:self.m_img_left];
    [self.m_back addSubview:self.m_lbl_rightTop];
    [self.m_back addSubview:self.m_lbl_rightCenter];
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

    [_m_img_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.m_back);
        make.left.equalTo(self.m_back).offset(self.m_model.m_img_left.m_margin_left);
        make.width.equalTo(@(self.m_model.m_img_left.m_width));
        make.height.equalTo(@(self.m_model.m_img_left.m_height));
    }];

    [_m_lbl_rightTop mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_img_left.mas_right).offset(self.m_model.m_title_rightTop.m_margin_left);
        make.right.equalTo(self.m_back).offset(-self.m_model.m_title_rightTop.m_margin_right);
        make.top.equalTo(self.m_back).offset(self.m_model.m_title_rightTop.m_margin_top);
        make.bottom.equalTo(self.m_lbl_rightCenter.mas_top).offset(-self.m_model.m_title_rightTop.m_margin_bottom);
    }];

    [_m_lbl_rightCenter mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_lbl_rightTop);
        make.right.equalTo(self.m_lbl_rightTop);
        make.top.equalTo(self.m_lbl_rightTop.mas_bottom).offset(self.m_model.m_title_rightCenter.m_margin_top);
        make.bottom.equalTo(self.m_lbl_rightBottom.mas_top).offset(-self.m_model.m_title_rightCenter.m_margin_bottom);
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_lbl_rightTop);
        make.right.equalTo(self.m_lbl_rightTop);
        make.top.equalTo(self.m_lbl_rightCenter.mas_bottom).offset(self.m_model.m_title_rightBottom.m_margin_top);
        make.bottom.equalTo(self.m_back).offset(-self.m_model.m_title_rightBottom.m_margin_bottom);
    }];


    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_back.mas_bottom).offset(1.);
    }];
}

-(CWUBCell_ImgLeft_TitleRightThree_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgLeft_TitleRightThree_Model new];
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

- (CWUBLabelWithModel *)m_lbl_rightTop{

    if (!_m_lbl_rightTop) {
        _m_lbl_rightTop = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightTop];
        _m_lbl_rightTop.textAlignment = NSTextAlignmentLeft;
        _m_lbl_rightTop.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_rightTop.numberOfLines = 0;
    }
    return _m_lbl_rightTop;
}

- (CWUBLabelWithModel *)m_lbl_rightCenter{

    if (!_m_lbl_rightCenter) {
        _m_lbl_rightCenter = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightCenter];
        _m_lbl_rightCenter.textAlignment = NSTextAlignmentLeft;
        _m_lbl_rightCenter.lineBreakMode = NSLineBreakByCharWrapping;
        _m_lbl_rightCenter.numberOfLines = 0;
    }

    return _m_lbl_rightCenter;
}

- (CWUBLabelWithModel *)m_lbl_rightBottom{

    if (!_m_lbl_rightBottom) {
        _m_lbl_rightBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightBottom];
        _m_lbl_rightBottom.textAlignment = NSTextAlignmentLeft;
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

-(UIImageView *)m_img_left{

    if(!_m_img_left){
        _m_img_left = [UIImageView new];
        [_m_img_left setImage:[UIImage imageNamed:self.m_model.m_img_left.m_imgName]];
        _m_img_left.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_left.clipsToBounds = YES;
        [_m_img_left setClipsToBounds:YES];
        [_m_img_left setUserInteractionEnabled:YES];

        if (self.m_model.m_img_left.m_isCircle) {
            _m_img_left.layer.cornerRadius = self.m_model.m_img_left.m_width/2.;
            _m_img_left.layer.masksToBounds = YES;
        }
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_imgLeft)];
        [_m_img_left addGestureRecognizer:tapGesturRecognizer];
    }
    return _m_img_left;
}

- (void) interface_updateWithModel:(CWUBCell_ImgLeft_TitleRightThree_Model*)model{

    self.m_model = model;
    [self.m_lbl_rightTop interface_update:model.m_title_rightTop];
    [self.m_lbl_rightCenter interface_update:model.m_title_rightCenter];
    [self.m_lbl_rightBottom interface_update:model.m_title_rightBottom];
    [self.m_img_left setImage:[UIImage imageNamed:self.m_model.m_img_left.m_imgName]];

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
