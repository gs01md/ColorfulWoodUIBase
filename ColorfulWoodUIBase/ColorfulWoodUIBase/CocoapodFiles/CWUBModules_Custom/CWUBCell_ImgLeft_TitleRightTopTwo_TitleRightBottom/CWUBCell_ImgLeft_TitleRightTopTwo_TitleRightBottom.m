//
//  CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/11.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"

@interface CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom()
@property (nonatomic, strong) UIImageView * m_img_left;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightTopLeft;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightTopRight;
@property (nonatomic, strong) CWUBLabelWithModel *m_lbl_rightBottom;
@property (nonatomic, strong) UIImageView * m_img_sep;
@end

@implementation CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];


    }

    return self;
}

- (id)initWithModel:(CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model*)model{

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notification_clearImg) name:CWUB_NOTIFICATION_CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom object:nil];

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

    [self addSubview:self.m_img_left];
    [self addSubview:self.m_lbl_rightTopLeft];
    [self addSubview:self.m_lbl_rightTopRight];
    [self addSubview:self.m_lbl_rightBottom];
    [self addSubview:self.m_img_sep];

    [self func_updateConsrtains];

}

- (void)func_updateConsrtains{

    [_m_img_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_img_left.m_margin_top);
        make.bottom.equalTo(self.m_img_sep.mas_top).offset(-self.m_model.m_img_left.m_margin_bottom);
        make.left.equalTo(self).offset(self.m_model.m_img_left.m_margin_left);
        make.width.equalTo(@(self.m_model.m_img_left.m_width));
        make.height.equalTo(@(self.m_model.m_img_left.m_height));
    }];

    [_m_lbl_rightTopLeft mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_img_left.mas_right).offset(self.m_model.m_title_rightTopLeft.m_margin_left);
        make.width.lessThanOrEqualTo(@(CWUBDefineDeviceWidth/2.));
        make.centerY.equalTo(self.m_img_left).offset(self.m_model.m_title_rightTopLeft.m_margin_CenterY);
    }];

    [_m_lbl_rightTopRight mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_lbl_rightTopLeft.mas_right).offset(self.m_model.m_title_rightTopRight.m_margin_left);
        make.right.lessThanOrEqualTo(self).offset(-self.m_model.m_title_rightTopRight.m_margin_right);
        make.centerY.equalTo(self.m_lbl_rightTopLeft);
    }];

    [_m_lbl_rightBottom mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_lbl_rightTopLeft);
        make.centerY.equalTo(self.m_img_left).offset(self.m_model.m_title_rightBottom.m_margin_CenterY);
        make.right.equalTo(self).offset(-self.m_model.m_title_rightBottom.m_margin_right);
    }];

    [_m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(self.m_model.m_bottomLineInfo.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_bottomLineInfo.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_left.mas_bottom).offset(self.m_model.m_img_left.m_margin_bottom);

    }];
}

-(CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel *)m_lbl_rightTopLeft{

    if (!_m_lbl_rightTopLeft) {
        _m_lbl_rightTopLeft = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightTopLeft];
        _m_lbl_rightTopLeft.textAlignment = NSTextAlignmentLeft;
    }
    return _m_lbl_rightTopLeft;
}

- (CWUBLabelWithModel *)m_lbl_rightTopRight{

    if (!_m_lbl_rightTopRight) {
        _m_lbl_rightTopRight = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightTopRight];
        _m_lbl_rightTopRight.textAlignment = NSTextAlignmentLeft;
    }

    return _m_lbl_rightTopRight;
}

- (CWUBLabelWithModel *)m_lbl_rightBottom{

    if (!_m_lbl_rightBottom) {
        _m_lbl_rightBottom = [[CWUBLabelWithModel alloc] initWithModel:self.m_model.m_title_rightBottom];
        _m_lbl_rightBottom.textAlignment = NSTextAlignmentLeft;
        _m_lbl_rightBottom.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
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

        /**
         * 如果原来已经显示了图片，就不要再显示默认图片
         */
        UIImage * img = _m_img_left.image?_m_img_left.image:[UIImage imageNamed:self.m_model.m_img_left.m_defaultName];
        [_m_img_left sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_img_left.m_imgName] placeholderImage:img completed:nil];
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

- (void) interface_updateWithModel:(CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model*)model{

    self.m_model = model;
    [self.m_lbl_rightTopLeft interface_update:model.m_title_rightTopLeft];
    [self.m_lbl_rightTopRight interface_update:model.m_title_rightTopRight];
    [self.m_lbl_rightBottom interface_update:model.m_title_rightBottom];
    [self.m_img_left setImage:[UIImage imageNamed:self.m_model.m_img_left.m_imgName]];
   /**
    * 如果原来已经显示了图片，就不要再显示默认图片
    */
    UIImage * img = self.m_img_left.image?self.m_img_left.image:[UIImage imageNamed:self.m_model.m_img_left.m_defaultName];
    [self.m_img_left sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_img_left.m_imgName] placeholderImage:img completed:nil];

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
    
    if ([self.delegate respondsToSelector:@selector(CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottomDelegate_leftImg)]) {

        [self.delegate CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottomDelegate_leftImg];
    }
}

#pragma mark - 清除图片消息
- (void)notification_clearImg{

    [self.m_img_left setImage:nil];
}

-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
