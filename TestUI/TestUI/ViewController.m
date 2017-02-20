//
//  ViewController.m
//  TestUI
//
//  Created by 大新 on 2017/1/28.
//  Copyright © 2017年 ColorWood. All rights reserved.
//

#import "ViewController.h"
#import "ColorfulWoodUIBase/ColorfulWoodUIBase.h"
#import <Masonry.h>

@interface ViewController ()<
CWUBViewBaseDelegate
>

@property(nonatomic,strong)CWUBLeftImageFollowField * m_field;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.m_field];
    [_m_field mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.top.equalTo(self.view);
        make.height.equalTo(@(100));
    }];
    
}


/**
 * 视图点击事件
 */
- (void)CWUBViewBaseDelegate_viewClick{
    
    NSLog(@"");
}


- (CWUBLeftImageFollowField*)m_field{
    
    if (!_m_field) {
        _m_field = [CWUBLeftImageFollowField new];
        _m_field.layer.borderColor = [UIColor grayColor].CGColor;
        _m_field.layer.borderWidth = 1.;
    }
    
    return _m_field;
}

@end
