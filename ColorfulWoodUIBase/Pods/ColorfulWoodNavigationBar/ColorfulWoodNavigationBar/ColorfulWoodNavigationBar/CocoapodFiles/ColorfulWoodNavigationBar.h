//
//  ColorfulWoodNavigationBar.h
//  ColorfulWoodNavigationBar
//
//  Created by 大新 on 2018/12/8.
//  Copyright © 2018 wood. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * 图片资源bundle
 */
#define ColorfulWoodNavigationBar_bundle       [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"CWNBBundle" ofType:@"bundle"]]

/**
 * bundle中的图片
 */
#define ColorfulWoodNavigationBar_bundle_pngImg(name) [UIImage imageWithContentsOfFile:[ColorfulWoodNavigationBar_bundle pathForResource:name ofType:@"png"]]

NS_ASSUME_NONNULL_BEGIN

@interface ColorfulWoodNavigationBar : UIView
@property (nonatomic, strong) UILabel     *titleLable;

@property (nonatomic, copy) void(^onClickLeftButton)(void);
@property (nonatomic, copy) void(^onClickRightButton)(void);

@property (nonatomic, copy)   NSString *title;
@property (nonatomic, strong) UIColor  *titleLabelColor;
@property (nonatomic, strong) UIFont   *titleLabelFont;
@property (nonatomic, strong) UIColor  *barBackgroundColor;
@property (nonatomic, strong) UIImage  *barBackgroundImage;

+ (instancetype)CustomNavigationBar;

- (void)cw_setBottomLineHidden:(BOOL)hidden;
- (void)cw_setBackgroundAlpha:(CGFloat)alpha;
- (void)cw_setTintColor:(UIColor *)color;

// 默认返回事件
//- (void)cw_setLeftButtonWithNormal:(UIImage *)normal highlighted:(UIImage *)highlighted title:(NSString *)title titleColor:(UIColor *)titleColor;
//- (void)cw_setLeftButtonWithImage:(UIImage *)image title:(NSString *)title titleColor:(UIColor *)titleColor;
- (void)cw_setLeftButtonWithNormal:(UIImage *)normal highlighted:(UIImage *)highlighted;
- (void)cw_setLeftButtonWithImage:(UIImage *)image;
- (void)cw_setLeftButtonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor;

//- (void)cw_setRightButtonWithNormal:(UIImage *)normal highlighted:(UIImage *)highlighted title:(NSString *)title titleColor:(UIColor *)titleColor;
//- (void)cw_setRightButtonWithImage:(UIImage *)image title:(NSString *)title titleColor:(UIColor *)titleColor;
- (void)cw_setRightButtonWithNormal:(UIImage *)normal highlighted:(UIImage *)highlighted;
- (void)cw_setRightButtonWithImage:(UIImage *)image;
- (void)cw_setRightButtonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor;

+ (BOOL)isIPhoneX;
@end

NS_ASSUME_NONNULL_END
