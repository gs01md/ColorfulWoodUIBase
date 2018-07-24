//
//  UIViewController+ColorfulWoodAddtional.h
//  ColorfulWoodCategories
//
//  Created by 大新 on 2017/2/17.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ColorfulWoodAddtional)
//设置返回按钮
- (void)createNavBarBackButtonItem;

- (UIButton*)rightWithText:(NSString *)text textColor:(UIColor *)textColor action:(SEL)sel;

- (void)leftWithText:(NSString *)text action:(SEL)sel;

- (void)rightWithImage:(UIImage *)image action:(SEL)sel;

- (void)leftWithImage:(UIImage *)image action:(SEL)sel;

- (CGRect)bounds;

- (CGRect)statusNavBounds;

- (CGRect)statusNavTabBarStaticBounds;

- (CGRect)tabBarBounds;

- (CGRect)segmentTabBarVisiableBounds;

- (CGRect)segmentVisiableBounds;

- (CGRect)segmentStaticViewBounds;

- (void)leftWithButtonImage:(UIImage *)image action:(SEL)sel;

- (void)rightWithButtonImage:(UIImage *)image action:(SEL)sel;

- (void)rightFullWithImage:(UIImage *)image action:(SEL)sel;

- (NSUInteger)supportedOrientationMasks;

- (UIInterfaceOrientation)supportedOrientations;

- (void)rightWithText:(NSString *)text action:(SEL)sel ;
@end
