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
@property (nonatomic, strong) UIImageView *m_img_sep;

/**
 * 刷新界面,当显示新的cell时，刷新界面
 */
@property (nonatomic, assign) BOOL m_isUpdate;
@end

@implementation CWUBCell_WebImgStretch

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBCell_WebImgStretch_Model*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

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
    [self initWithSubViews];
}

- (void) initWithSubViews{

    [self addSubview:self.m_img_center];
    [self addSubview:self.m_img_sep];

    [self interface_updateWithModel:self.m_model index:0];

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

-(UIImageView *)m_img_sep{

    if(!_m_img_sep){
        _m_img_sep = [CWUBDefine imgSep];
        [_m_img_sep setClipsToBounds:YES];
    }
    return _m_img_sep;
}

- (void)interface_updateWithModel:(CWUBCell_WebImgStretch_Model*)model index:(int)row{

    self.m_model = model;
    if (self.m_model.m_bottomLineInfo.m_color) {
        self.m_img_sep.backgroundColor = self.m_model.m_bottomLineInfo.m_color;
    }else{
        self.m_img_sep.backgroundColor = [UIColor clearColor];
    }
    self.m_isUpdate = TRUE;
    [self func_updateConstraints:row];

}

- (void)func_updateConstraints:(int)row{

    [_m_img_center sd_setImageWithURL:[NSURL URLWithString:self.m_model.m_image.m_imgName] placeholderImage:[UIImage imageNamed:self.m_model.m_image.m_defaultName] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {

        float height = image.size.height/image.size.width * CWUBDefineDeviceWidth;

        if (height && height>0) {

            [self.m_img_center mas_remakeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self).offset(self.m_model.m_image.m_margin_top);
                make.left.equalTo(self).offset(self.m_model.m_image.m_margin_left);
                make.right.equalTo(self).offset(-self.m_model.m_image.m_margin_right);
                make.height.equalTo(@(height));
            }];

            [self.m_img_sep mas_remakeConstraints:^(MASConstraintMaker *make) {

                make.left.equalTo(@(self.m_model.m_image.m_margin_left));
                make.right.equalTo(@(-self.m_model.m_image.m_margin_right));
                make.bottom.equalTo(self);
                make.height.equalTo(@(1));
                make.top.equalTo(self.m_img_center.mas_bottom).offset(self.m_model.m_image.m_margin_top);
            }];


            if ([self.delegate respondsToSelector:@selector(CWUBCell_WebImgStretchDelegate_updateLayout:)]) {

                [self.delegate CWUBCell_WebImgStretchDelegate_updateLayout:row];
            }
        }

    }];
}

#pragma mark - 事件

- (void)awakeFromNib {[super awakeFromNib];}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end



