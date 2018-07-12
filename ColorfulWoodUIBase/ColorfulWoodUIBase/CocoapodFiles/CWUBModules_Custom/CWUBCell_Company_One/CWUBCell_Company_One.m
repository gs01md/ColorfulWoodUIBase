//
//  CWUBCell_Company_One.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Company_One.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

#define Img_Top_Reduce 0

@interface CWUBCell_Company_One()
/**
 * 用于显示一个圆角浮层
 */
@property (nonatomic, strong) UIImageView *m_back;
@property (nonatomic, strong) UIImageView * m_img_top;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_center;

/**
 * 底部容器，包含三项后，整体居中显示
 */
@property (nonatomic, strong) UIView *m_backBottom;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottomLeft;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_bottomCenter;
@property (nonatomic, strong) UIImageView *m_img_bottomRight;

@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_Company_One

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_Company_One_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];

        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification_clearImg) name:CWUB_NOTIFICATION_CWUBCell_Company_One object:nil];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_Company_One_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_Company_One_Model*)model{

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

    [self.m_back addSubview:self.m_lbl_center];
    [self addSubview:self.m_img_top];

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
        make.height.equalTo(@(self.m_model.m_back.m_height));
        make.bottom.equalTo(self.m_img_sep).offset(-1.);
    }];

    [_m_img_top mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_img_top.m_margin_top);
        make.centerX.equalTo(self);
        make.width.equalTo(@(self.m_model.m_img_top.m_width + Img_Top_Reduce));
        make.height.equalTo(@(self.m_model.m_img_top.m_height + Img_Top_Reduce));
    }];


    [_m_lbl_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_back).offset(self.m_model.m_title_center.m_margin_left);
        make.right.equalTo(self.m_back).offset(-self.m_model.m_title_center.m_margin_right);
        make.centerY.equalTo(self.m_back).offset(self.m_model.m_title_center.m_margin_CenterY);
    }];

    [_m_lbl_bottomLeft mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_backBottom);
        make.top.equalTo(self.m_backBottom);
        make.bottom.equalTo(self.m_backBottom);
        make.width.lessThanOrEqualTo(@(self.m_model.m_title_bottomLeft.m_width_max));
    }];

    [_m_lbl_bottomCenter mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(self.m_lbl_bottomLeft.mas_right).offset(self.m_model.m_img_bottomRight.m_margin_left);
        make.centerY.equalTo(self.m_lbl_bottomLeft);
        make.width.lessThanOrEqualTo(@(self.m_model.m_title_bottomCenter.m_width_max));
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

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_back.mas_bottom).offset(1.);
    }];
}

#pragma mark - 属性
-(CWUBCell_Company_One_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_Company_One_Model new];
    }

    return _m_model;
}

- (UIImageView *)m_back{

    if (!_m_back) {
        _m_back = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.m_model.m_back.m_imgName]];
        _m_back.backgroundColor = self.m_model.m_back.m_color_background;
        _m_back.userInteractionEnabled = YES;
        _m_back.contentMode = UIViewContentModeScaleToFill;
        _m_back.clipsToBounds = YES;
        [_m_back setClipsToBounds:YES];
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

        /**
         * 如果原来已经显示了图片，就不要再显示默认图片
         */
        UIImage * img = _m_img_top.image?_m_img_top.image:[UIImage imageNamed:self.m_model.m_img_top.m_defaultName];
        [_m_img_top sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_img_top.m_imgName] placeholderImage:img completed:nil];
        _m_img_top.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_top.clipsToBounds = YES;
        [_m_img_top setClipsToBounds:YES];
        [_m_img_top setUserInteractionEnabled:YES];

        if (self.m_model.m_img_top.m_isCircle) {
            _m_img_top.layer.cornerRadius = (self.m_model.m_img_top.m_width + Img_Top_Reduce)/2.;
            _m_img_top.layer.masksToBounds = YES;
        }
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event_imgTop)];
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

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void) interface_updateWithModel:(CWUBCell_Company_One_Model*)model{

    self.m_model = model;
    [self.m_lbl_center interface_update:model.m_title_center];
    [self.m_lbl_bottomLeft interface_update:model.m_title_bottomLeft];
    [self.m_lbl_bottomCenter interface_update:model.m_title_bottomCenter];
    [self.m_img_bottomRight setImage:[UIImage imageNamed:self.m_model.m_img_bottomRight.m_imgName]];

    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    if (self.m_model.m_bottomLineInfo.m_image && self.m_model.m_bottomLineInfo.m_image.length>0) {
        [self.m_img_sep setImage:[UIImage imageNamed:self.m_model.m_bottomLineInfo.m_image]];
    }
    [self.m_back setImage:[UIImage imageNamed:self.m_model.m_back.m_imgName]];

    if (self.m_model.m_img_top.m_imgUrl.length>0) {
        /**
         * 如果原来已经显示了图片，就不要再显示默认图片
         */
        UIImage * img = self.m_img_top.image?self.m_img_top.image:[UIImage imageNamed:self.m_model.m_img_top.m_defaultName];
        [self.m_img_top sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_img_top.m_imgUrl] placeholderImage:img completed:nil];
    }else{
        [self.m_img_top setImage:[UIImage imageNamed:self.m_model.m_img_top.m_imgName]];
    }

    [self func_updateConsrtains];

}

#pragma mark - system
- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

#pragma mark - 接口

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件
- (void)event_imgTop{

    if ([self.delegate respondsToSelector:@selector(CWUBCell_Company_One_topImg)]) {

        [self.delegate CWUBCell_Company_One_topImg];
    }
}

#pragma mark - 清除图片消息
- (void)notification_clearImg{

    [self.m_img_top setImage:nil];
}

-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end

