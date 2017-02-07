//
//  ViewController.m
//  TestUI
//
//  Created by 大新 on 2017/1/28.
//  Copyright © 2017年 ColorWood. All rights reserved.
//

#import "ViewController.h"
#import "ColorfulWoodUIBase/ColorfulWoodUIBase.h"

@interface ViewController ()<
CWUBViewBaseDelegate
>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CWUBLeftImageFollowTitle * vc = [[CWUBLeftImageFollowTitle alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 50)];
//    vc.delegate = self;
//    vc.m_imgBottom.backgroundColor = [UIColor redColor];
//    vc.m_imgTop.backgroundColor = [UIColor blueColor];
//    vc.m_labelContent.text = @"222222";
//    [self.view addSubview:vc];
//    vc.backgroundColor = [UIColor yellowColor];
}


/**
 * 视图点击事件
 */
- (void)CWUBViewBaseDelegate_viewClick{
    
    NSLog(@"");
}




@end
