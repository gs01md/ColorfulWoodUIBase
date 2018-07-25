//
//  CWUBView_TitleLeft_ButtonRight.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBView_TitleLeft_ButtonRight.h"
#import "CWUBLabelWithModel.h"

@interface CWUBView_TitleLeft_ButtonRight()
@property (strong, nonatomic) CWUBLabelWithModel *m_lbl_left;
@property (strong, nonatomic) UIImageView *m_img_right;
@end

@implementation CWUBView_TitleLeft_ButtonRight

- (instancetype) init{

    if (self = [super init]) {
        [self func_initSubViews];
    }

    return self;
}

- (instancetype) initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        [self func_initSubViews];
    }

    return self;
}

- (instancetype) initWithModel:(CWUBView_TitleLeft_ButtonRight_Model*)model{

    if (self = [super init]) {
        self.m_model = model;

        [self func_initSubViews];
        [self func_updateConstrains];
    }

    return self;
}

- (void)interface_updateWithModel:(CWUBView_TitleLeft_ButtonRight_Model*)model{
    
    self.m_model = model;

    if (model.m_cornerInfo && model.m_cornerInfo.m_cornerRadius>0 && model.m_cornerInfo.m_cornerWidth>0) {

        self.layer.cornerRadius = model.m_cornerInfo.m_cornerRadius;
        self.layer.borderWidth = model.m_cornerInfo.m_cornerWidth;
        self.layer.borderColor = [model.m_cornerInfo.m_cornerColor CGColor];
        self.layer.masksToBounds = YES;

    }else{

        self.layer.cornerRadius = 0.;
        self.layer.borderWidth = 0.;
        self.layer.borderColor = [[UIColor clearColor] CGColor];
        self.layer.masksToBounds = NO;
    }

    [self.m_lbl_left interface_update:self.m_model.m_title];
    [self.m_img_right setImage:[UIImage imageNamed: self.m_model.m_img.m_imgName]];
    self.backgroundColor = self.m_model.m_color_backGround;
    [self func_updateConstrains];
}

- (void)func_initSubViews{

    [self addSubview:self.m_lbl_left];
    [self addSubview:self.m_img_right];

}

- (void)func_updateConstrains{

    [self.m_img_right mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-self.m_model.m_img.m_margin_right);
        make.width.equalTo(@(self.m_model.m_img.m_width));
        make.height.equalTo(@(self.m_model.m_img.m_height));
        make.centerY.equalTo(self.m_lbl_left);
    }];

    [self.m_lbl_left mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(self.m_model.m_title.m_margin_left);
        /**
         * 用于判断是否隐藏了图片，这时一般设置图片大小为0.1或更小值
         */
        if(self.m_model.m_img.m_width > 1){
            make.right.equalTo(self.m_img_right.mas_left).offset(-self.m_model.m_title.m_margin_right);
        }else{
            make.right.equalTo(self).offset(-self.m_model.m_title.m_margin_right);
        }

        make.top.equalTo(self);
        make.bottom.equalTo(self);
    }];

}

#pragma mark - 属性
- (CWUBView_TitleLeft_ButtonRight_Model*)m_model{

    if (!_m_model) {
        _m_model = [CWUBView_TitleLeft_ButtonRight_Model new];
    }

    return _m_model;
}

- (CWUBLabelWithModel*) m_lbl_left {

    if (!_m_lbl_left) {
        _m_lbl_left = [[CWUBLabelWithModel alloc] initWithModel: self.m_model.m_title];
        _m_lbl_left.textAlignment = NSTextAlignmentCenter;
        _m_lbl_left.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
        _m_lbl_left.numberOfLines = 0;
    }
    return _m_lbl_left;
}

- (UIImageView*) m_img_right {

    if (!_m_img_right) {

        _m_img_right = [UIImageView new];
        [_m_img_right setImage:[UIImage imageNamed:self.m_model.m_img.m_imgName]];
        _m_img_right.contentMode = UIViewContentModeScaleAspectFill;
        _m_img_right.clipsToBounds = YES;
        [_m_img_right setClipsToBounds:YES];
    }

    return _m_img_right;
}
@end
