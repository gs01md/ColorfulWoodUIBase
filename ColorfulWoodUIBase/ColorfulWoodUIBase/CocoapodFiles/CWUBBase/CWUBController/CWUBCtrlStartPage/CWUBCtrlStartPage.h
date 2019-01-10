//
//  CWUBCtrlStartPage.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>


#define CWUBCtrlStartPage_isStartUp @"CWUBCtrlStartPage_isStartUp"

@interface CWUBCtrlStartPage : UIViewController

/**
 立即体验
 */
@property (nonatomic, copy)void (^block_enter)(void);

/**
 生成启动页面
 如果是X系列的手机，优先使用imgXArray，如果没有imgXArray，则使用imgArray

 @param imgArray 图片数组
 @param imgXArray iphoneX 图片数组
 @param btnImg 立即体验按钮图片
 */
- (void)interface_setupWithImgs:(NSArray *)imgArray xImgs:(NSArray *)imgXArray btnImg:(NSString *)btnImg;

/**
 生成启动页面
 如果是X系列的手机，优先使用imgXArray，如果没有imgXArray，则使用imgArray

 @param vc 主页
 @param win APPDelegate.window
 @param imgArray 图片数组
 @param imgXArray iphoneX 图片数组
 @param btnImg 立即体验按钮图片
 */
+ (void)interface_startVC:(UIViewController*)vc window:(UIWindow*)win imgs:(NSArray *)imgArray imgXs:(NSArray*)imgXArray btnImg:(NSString*)btnImg;
@end
