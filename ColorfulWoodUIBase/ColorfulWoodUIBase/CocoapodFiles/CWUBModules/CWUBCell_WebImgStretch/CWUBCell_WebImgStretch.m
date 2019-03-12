//
//  CWUBCell_WebImgStretch.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/26.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_WebImgStretch.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface CWUBCell_WebImgStretch()
@property (nonatomic, strong) UIImageView *m_img_center;

/**
 * 刷新界面,当显示新的cell时，刷新界面
 */
@property (nonatomic, assign) BOOL m_isUpdate;
@end

@implementation CWUBCell_WebImgStretch

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_WebImgStretch_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier model:model]) {

        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (id)initWithModel:(CWUBCell_WebImgStretch_Model*)model{

    if (self = [super init]) {
        [self fun_commonInitWithModel:model];
    }

    return self;
}

- (void)fun_commonInitWithModel:(CWUBCell_WebImgStretch_Model*)model{

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

    [self addSubview:self.m_img_center];
    [self addSubview:self.m_img_sep];

    //[self interface_updateWithModel:self.m_model index:0];

}

-(CWUBCell_WebImgStretch_Model*) m_model{

    if (!_m_model) {
        _m_model = [CWUBCell_WebImgStretch_Model new];
    }

    return _m_model;
}

-(UIImageView *)m_img_center{

    if(!_m_img_center){
        _m_img_center = [UIImageView new];
        //[_m_img_center sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_image.m_imgName] placeholderImage:[UIImage imageNamed:self.m_model.m_image.m_defaultName]];
        _m_img_center.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_center.clipsToBounds = NO;
        [_m_img_center setClipsToBounds:NO];

    }
    return _m_img_center;
}

- (void)interface_updateWithModel:(CWUBCell_WebImgStretch_Model*)model{

    [super interface_updateWithModel:model];
    
    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    self.m_isUpdate = TRUE;

    UIImage *image = [UIImage imageNamed:self.m_model.m_image.m_imgName];
    float height = 1.;
    if (image) {
        height = image.size.height/image.size.width * CWUBDefineDeviceWidth;
    }

    [self.m_img_center setImage:image];
    [self.m_img_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_image.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_image.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_image.m_margin_right);
        make.height.equalTo(@(height));
        NSLog(@"%f",height);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_image.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_image.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_center.mas_bottom).offset(self.m_model.m_image.m_margin_top);
    }];

    [self func_updateConstraints];

}

- (void)func_updateConstraints{

    [_m_img_center sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_image.m_imgName] placeholderImage:[UIImage imageNamed:self.m_model.m_image.m_defaultName] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {

        float height = 0.;

        if (image) {
            height = image.size.height/image.size.width * CWUBDefineDeviceWidth;
        }

        if (height && height>0) {


            /**
             * 防止重复刷新
             */
            if (self.m_model.m_image.m_height != height) {
                self.m_model.m_image.m_height = height;
                if ([self.delegate respondsToSelector:@selector(CWUBCell_WebImgStretchDelegate_updateLayoutWithHeight:)]) {

                    [self.delegate CWUBCell_WebImgStretchDelegate_updateLayoutWithHeight:height];
                }
            }

        }

    }];

    [self.m_img_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_image.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_image.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_image.m_margin_right);
        make.height.equalTo(@(self.m_model.m_image.m_height));
        NSLog(@"%f",self.m_model.m_image.m_height);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_image.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_image.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_center.mas_bottom).offset(self.m_model.m_image.m_margin_top);
    }];

}


- (void)func_updateConstraints:(int)row{

    [_m_img_center sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_image.m_imgName] placeholderImage:[UIImage imageNamed:self.m_model.m_image.m_defaultName] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {

        float height = 0.;

        if (image) {
            height = image.size.height/image.size.width * CWUBDefineDeviceWidth;
        }

        if (height && height>0) {


            /**
             * 防止重复刷新
             */
            if (self.m_model.m_image.m_height != height) {
                self.m_model.m_image.m_height = height;
                if ([self.delegate respondsToSelector:@selector(CWUBCell_WebImgStretchDelegate_updateLayout: height:)]) {

                    [self.delegate CWUBCell_WebImgStretchDelegate_updateLayout:row height:height];
                }
            }

        }

    }];

    [self.m_img_center mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(self.m_model.m_image.m_margin_top);
        make.left.equalTo(self).offset(self.m_model.m_image.m_margin_left);
        make.right.equalTo(self).offset(-self.m_model.m_image.m_margin_right);
        make.height.equalTo(@(self.m_model.m_image.m_height));
        NSLog(@"%f",self.m_model.m_image.m_height);
    }];

    [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(self.m_model.m_image.m_margin_left));
        make.right.equalTo(@(-self.m_model.m_image.m_margin_right));
        make.bottom.equalTo(self);
        make.height.equalTo(@(self.m_model.m_bottomLineInfo.m_height));
        make.top.equalTo(self.m_img_center.mas_bottom).offset(self.m_model.m_image.m_margin_top);
    }];

}

-(NSString *)interface_get_event_opt_code{
    return self.m_model.m_event_opt_code;
}

#pragma mark - 事件

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end



