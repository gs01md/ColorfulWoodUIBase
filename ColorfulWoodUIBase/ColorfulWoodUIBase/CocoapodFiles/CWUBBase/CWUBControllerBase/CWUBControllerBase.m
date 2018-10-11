//
//  CWUBControllerBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/9/6.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBControllerBase.h"

@interface CWUBControllerBase ()

@end

@implementation CWUBControllerBase

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];

    UITableView.appearance.estimatedRowHeight = 200;
    UITableView.appearance.estimatedSectionFooterHeight = 0;
    UITableView.appearance.estimatedSectionHeaderHeight = 0;
}

@end
