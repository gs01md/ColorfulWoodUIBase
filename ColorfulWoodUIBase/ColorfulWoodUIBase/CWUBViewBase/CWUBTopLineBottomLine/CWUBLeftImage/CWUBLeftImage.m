//
//  CWUBLeftImage.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/6.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "CWUBLeftImage.h"
#import "Masonry.h"

@implementation CWUBLeftImage

- (instancetype) init{
    
    if (self = [super init]) {
        
        [self initWidgetCWUBLeftImage];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        [self initWidgetCWUBLeftImage];
    }
    
    return self;
}

- (void) initWidgetCWUBLeftImage{
    
    CWUBDefineLog;
    
    [self addSubview:self.m_imgLeft];
    [_m_imgLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self).offset(CWUBDefine_topMargin);
        make.bottom.equalTo(self).offset(-CWUBDefine_bottomMargin);
        make.left.equalTo(self).offset(CWUBDefine_leftMargin);
        make.width.equalTo(_m_imgLeft.mas_height);
        
    }];
}

#pragma mark - 属性

- (UIImageView*) m_imgLeft {
    
    if (!_m_imgLeft) {
        
        _m_imgLeft = [UIImageView new];
        _m_imgLeft.contentMode =  UIViewContentModeScaleAspectFit;
        _m_imgLeft.layer.masksToBounds = YES;
        _m_imgLeft.backgroundColor = CWUBDefineCreate_Color(250., 250., 250., 1);
        _m_imgLeft.layer.borderColor = CWUBDefineCreate_Color(228., 228., 228., 1).CGColor;
        _m_imgLeft.layer.borderWidth = 1.;
        _m_imgLeft.layer.cornerRadius = 3.;
    }
    
    return _m_imgLeft;
}



@end
