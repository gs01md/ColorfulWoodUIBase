//
//  CWUBViewBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/4.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "CWUBViewBase.h"
#import "Masonry.h"

@implementation CWUBViewBase

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        [self initWidgetCWUBViewBase];
        
    }
    
    return self;
}

- (instancetype) init{
    
    if (self = [super init]) {
        
        [self initWidgetCWUBViewBase];
    }
    
    return self;
}

- (void) initWidgetCWUBViewBase{
    
    [self addTapGesture];
    
}

#pragma mark - 点击事件

- (void) addTapGesture {
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    
    [self addGestureRecognizer:tap];
    
    
}

- (void) handleTap{
    
    if ([self.delegate respondsToSelector:@selector(CWUBViewBaseDelegate_viewClick)]) {
        
        [self.delegate CWUBViewBaseDelegate_viewClick];
    }
}

@end
