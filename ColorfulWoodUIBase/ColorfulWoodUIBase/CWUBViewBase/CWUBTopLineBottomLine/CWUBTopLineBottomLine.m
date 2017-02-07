//
//  CWUBTopLineBottomLine.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/4.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "CWUBTopLineBottomLine.h"
#import <Masonry.h>

@implementation CWUBTopLineBottomLine

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        [self initWidgetCWUBTopLineBottomLine];
    }
    
    return self;
}

- (instancetype) init{
    
    if (self = [super init]) {
        
        [self initWidgetCWUBTopLineBottomLine];
    }
    
    return self;
}

- (void) initWidgetCWUBTopLineBottomLine{
    
    CWUBDefineLog;
    
    [self addSubview:self.m_imgTop];
    [_m_imgTop mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self);
        make.height.equalTo(@(1));
        make.left.equalTo(self).offset(CWUBDefine_leftMargin);
        make.right.equalTo(self).offset(-CWUBDefine_rightMargin);
        
    }];
    
    [self addSubview:self.m_imgBottom];
    [_m_imgBottom mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_bottom).offset(-1);
        make.height.equalTo(@(1));
        make.left.equalTo(self).offset(CWUBDefine_leftMargin);
        make.right.equalTo(self).offset(-CWUBDefine_rightMargin);
        
    }];
}

- (UIImageView *) m_imgTop{
    
    if (!_m_imgTop) {
        
        _m_imgTop = [UIImageView new];
    }
    
    return _m_imgTop;
}

- (UIImageView *) m_imgBottom{
    
    if (!_m_imgBottom) {
        
        _m_imgBottom = [UIImageView new];
    }
    
    return _m_imgBottom;
}

@end
