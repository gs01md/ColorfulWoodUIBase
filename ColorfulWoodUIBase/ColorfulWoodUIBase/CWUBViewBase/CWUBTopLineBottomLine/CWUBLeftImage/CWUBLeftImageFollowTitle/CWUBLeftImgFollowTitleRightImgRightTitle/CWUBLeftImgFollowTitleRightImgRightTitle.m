//
//  CWUBLeftImgFollowTitleRightImgHeadTitle.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/6.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "CWUBLeftImgFollowTitleRightImgRightTitle.h"
#import <Masonry.h>

@implementation CWUBLeftImgFollowTitleRightImgRightTitle

- (instancetype) init{
    
    if (self = [super init]) {
     
        [self initWidgetCWUBLeftImgFollowTitleRightImgRightTitle];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        [self initWidgetCWUBLeftImgFollowTitleRightImgRightTitle];
    }
    
    return self;
}

- (void)initWidgetCWUBLeftImgFollowTitleRightImgRightTitle{
    
    [self addSubview:self.m_imgRight];
    [_m_imgRight mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.height.equalTo(@(15));
        make.right.equalTo(self).offset(-CWUBDefine_rightMargin);
        make.width.equalTo(@(10));
        make.centerY.equalTo(self);
        
    }];
    
    [self addSubview:self.m_LabelRight];
    [_m_LabelRight mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self).offset(CWUBDefine_topMargin);
        make.bottom.equalTo(self).offset(-CWUBDefine_topMargin);
        make.width.equalTo(@(30));
        make.right.equalTo(self.m_imgRight.mas_left).offset(-CWUBDefine_rightMargin);
        
    }];
    
    [self.m_labelContent removeFromSuperview];
    [self addSubview:self.m_labelContent];
    [self.m_labelContent mas_updateConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self).offset(CWUBDefine_topMargin);
        make.bottom.equalTo(self).offset(-CWUBDefine_bottomMargin);
        make.left.equalTo(self.m_imgLeft.mas_right).offset(CWUBDefine_leftMargin);
        make.right.equalTo(self.m_LabelRight.mas_left).offset(-CWUBDefine_rightMargin);
    }];

    
}

#pragma mark - 属性
- (UIImageView*) m_imgRight {
    
    if (!_m_imgRight) {
        
        _m_imgRight = [UIImageView new];
        _m_imgRight.contentMode =  UIViewContentModeScaleAspectFit;
    }
    
    return _m_imgRight;
}

- (UILabel*)m_LabelRight{
    
    if (!_m_LabelRight) {
        
        _m_LabelRight = [UILabel new];
        _m_LabelRight.font = CWUBDefineFontContent;
        _m_LabelRight.textColor = CWUBDefineColorContent;
        _m_LabelRight.textAlignment = NSTextAlignmentRight;
    }
    
    return _m_LabelRight;
}
@end
