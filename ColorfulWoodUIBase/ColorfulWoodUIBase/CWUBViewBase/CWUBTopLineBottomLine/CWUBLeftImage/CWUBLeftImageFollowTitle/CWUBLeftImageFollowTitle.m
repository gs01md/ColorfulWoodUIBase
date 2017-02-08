//
//  CWUBLeftImageFollowTitle.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/6.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "CWUBLeftImageFollowTitle.h"
#import "Masonry.h"

@implementation CWUBLeftImageFollowTitle

- (instancetype) init{
    
    if (self = [super init]) {
        
        [self initWidgetCWUBLeftImageFollowTitle];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {

        [self initWidgetCWUBLeftImageFollowTitle];

    }
    
    return self;
}

- (void)initWidgetCWUBLeftImageFollowTitle{
    
    CWUBDefineLog;
    
    [self addSubview:self.m_labelContent];
    [_m_labelContent mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(self).offset(CWUBDefine_topMargin);
        make.bottom.equalTo(self).offset(-CWUBDefine_bottomMargin);
        make.left.equalTo(self.m_imgLeft.mas_right).offset(CWUBDefine_leftMargin);
        make.right.equalTo(self).offset(-CWUBDefine_rightMargin);
        
    }];
    
}

#pragma mark - 属性

- (UILabel*)m_labelContent{
    
    if (!_m_labelContent) {
        
        _m_labelContent = [UILabel new];
        _m_labelContent.font = CWUBDefineFontTitle;
        _m_labelContent.textColor = CWUBDefineColorContent;
    }
    
    return _m_labelContent;
}

@end
