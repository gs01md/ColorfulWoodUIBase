//
//  ViewController.m
//  TestUI
//
//  Created by 大新 on 2017/2/6.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "ViewController.h"
#import <ColorfulWoodUIBase/ColorfulWoodUIBase.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CWUBLeftImageFollowField * vc = [[CWUBLeftImageFollowField alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 50)];

    vc.m_imgBottom.backgroundColor = [UIColor redColor];
    vc.m_txtFieldContent.text = @"";
    //vc.m_LabelRight.text = @"12";
    //vc.m_imgRight.image = [UIImage imageNamed:@"arrow_right"];
    [self.view addSubview:vc];
}



@end
