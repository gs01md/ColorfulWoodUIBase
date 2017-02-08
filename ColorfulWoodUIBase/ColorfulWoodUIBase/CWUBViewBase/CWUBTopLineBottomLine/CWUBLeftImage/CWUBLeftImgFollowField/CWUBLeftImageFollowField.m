//
//  CWUBLeftImageFollowField.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/7.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "CWUBLeftImageFollowField.h"
#import "Masonry.h"

@implementation CWUBLeftImageFollowField

- (instancetype) init{
    
    if (self = [super init]) {
        
        [self initWidgetCWUBLeftImageFollowField];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        [self initWidgetCWUBLeftImageFollowField];
        
    }
    
    return self;
}

- (void)initWidgetCWUBLeftImageFollowField{
    
    CWUBDefineLog;
    
    [self addSubview:self.m_txtFieldContent];
    [_m_txtFieldContent mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self).offset(CWUBDefine_topMargin);
        make.bottom.equalTo(self).offset(-CWUBDefine_bottomMargin);
        make.left.equalTo(self.m_imgLeft.mas_right).offset(CWUBDefine_leftMargin);
        make.right.equalTo(self).offset(-CWUBDefine_rightMargin);
        
    }];
    
}

#pragma mark - 属性

- (UITextField*)m_txtFieldContent{
    
    if (!_m_txtFieldContent) {
        
        _m_txtFieldContent = [UITextField new];
        _m_txtFieldContent.font = CWUBDefineFontTitle;
        _m_txtFieldContent.textColor = CWUBDefineColorContent;
        _m_txtFieldContent.placeholder = @"请输入内容";
        _m_txtFieldContent.clearButtonMode = UITextFieldViewModeWhileEditing;
        
    }
    
    return _m_txtFieldContent;
}

@end

