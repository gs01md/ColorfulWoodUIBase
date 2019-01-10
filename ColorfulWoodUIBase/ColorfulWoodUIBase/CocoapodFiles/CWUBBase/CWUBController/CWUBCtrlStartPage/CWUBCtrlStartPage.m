//
//  CWUBCtrlStartPage.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCtrlStartPage.h"
#import "CWUBDefine.h"
#import "ColorfulWoodNavigationBar.h"

@interface CWUBCtrlStartPage ()

@end

@implementation CWUBCtrlStartPage

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

    [self.navigationController setNavigationBarHidden:YES];
    self.navigationController.navigationBar.hidden = YES;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:YES forKey:CWUBCtrlStartPage_isStartUp];
    [defaults synchronize];
}

/**
 生成启动页面
 如果是X系列的手机，优先使用imgXArray，如果没有imgXArray，则使用imgArray

 @param imgArray 图片数组
 @param imgXArray iphoneX 图片数组
 @param btnImg 立即体验按钮图片
 */
- (void)interface_setupWithImgs:(NSArray *)imgArray xImgs:(NSArray *)imgXArray btnImg:(NSString *)btnImg{

    if (!imgArray && !imgXArray) {
        return;
    }

    if (imgArray.count <= 0 ) {
        return;
    }

    NSArray * array = self.view.subviews;

    for (UIView *view in array) {
        [view removeFromSuperview];
    }

    UIScrollView *myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, CWUBDefineDeviceWidth, CWUBDefineDeviceHeight)];
    for (int i = 0; i < imgArray.count; i++) {
        NSString *imageName;
        if([ColorfulWoodNavigationBar isIPhoneX]){

            if (imgXArray && imgXArray.count>i) {
                imageName = imgXArray[i];
            } else {
                imageName = imgArray[i];
            }

        }else{
            imageName = imgArray[i];
        }
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(CWUBDefineDeviceWidth * i, 0, CWUBDefineDeviceWidth, CWUBDefineDeviceHeight)];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.userInteractionEnabled = YES;

        // 在最后一页创建按钮
        if (i == imgArray.count-1) {
            UIImage *img = [UIImage imageNamed:btnImg];
            UIButton *button = [[UIButton alloc] init];
            [button setImage:img forState:UIControlStateNormal];
            button.adjustsImageWhenHighlighted = NO;
            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                CGFloat yScale = CWUBDefineDeviceHeight / 812;
                button.frame = CGRectMake((CWUBDefineDeviceWidth - img.size.width) / 2, 650 * yScale, img.size.width, img.size.height);
            }else {
                button.frame = CGRectMake((CWUBDefineDeviceWidth - img.size.width) / 2, CWUBDefine_Height(530), img.size.width, img.size.height);
            }

            [button addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
            [imageView addSubview:button];
        }
        imageView.image = image;
        [myScrollView addSubview:imageView];
    }
    myScrollView.bounces = NO;
    myScrollView.pagingEnabled = YES;
    myScrollView.showsHorizontalScrollIndicator = NO;
    myScrollView.contentSize = CGSizeMake(CWUBDefineDeviceWidth * imgArray.count, CWUBDefineDeviceWidth);
    [self.view addSubview:myScrollView];
}

#pragma mark - 点击立即体验
- (void)go:(UIButton *)btn
{
    if (self.block_enter) {
        self.block_enter();
    }
}

#pragma mark - 接口

+ (void)interface_startVC:(UIViewController*)vc window:(UIWindow*)win imgs:(NSArray *)imgArray imgXs:(NSArray*)imgXArray btnImg:(NSString*)btnImg{

    if([[NSUserDefaults standardUserDefaults] boolForKey:CWUBCtrlStartPage_isStartUp] == NO){//首次启动进入引导页

        CWUBCtrlStartPage *bootPageVC = [[CWUBCtrlStartPage alloc]init];
        [bootPageVC interface_setupWithImgs:imgArray xImgs:imgXArray btnImg:btnImg];
        bootPageVC.view.backgroundColor = [UIColor whiteColor];
        UINavigationController * navi = [[UINavigationController alloc] initWithRootViewController:bootPageVC];
        bootPageVC.navigationController.navigationBar.hidden = YES;
        win.rootViewController = navi;
        bootPageVC.block_enter = ^{
            [CWUBCtrlStartPage func_enterMain:vc window:win];
        };
        [win makeKeyAndVisible];

    }else{
        [CWUBCtrlStartPage func_enterMain:vc window:win];
    }
}

/**
 * 进入首页
 */
+ (void)func_enterMain:(UIViewController *)vc window:(UIWindow*)win{

    UINavigationController * navi = [[UINavigationController alloc] initWithRootViewController:vc];
    vc.navigationController.navigationBar.hidden = YES;
    win.rootViewController = navi;
    [win makeKeyAndVisible];

}

@end
