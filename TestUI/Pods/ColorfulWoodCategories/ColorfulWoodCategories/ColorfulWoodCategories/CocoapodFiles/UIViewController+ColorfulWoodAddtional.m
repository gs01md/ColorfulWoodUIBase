//
//  UIViewController+ColorfulWoodAddtional.m
//  ColorfulWoodCategories
//
//  Created by 大新 on 2017/2/17.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "UIViewController+ColorfulWoodAddtional.h"
#import "UIImage+ColorfulWoodAddtional.h"
#import "UINavigationItem+ColorfulWoodMargin.h"

@implementation UIViewController (ColorfulWoodAddtional)
- (CGRect)segmentTabBarVisiableBounds {
    CGRect bounds = self.view.bounds;
    bounds.size.height = bounds.size.height - 64.0f;
    bounds.size.height = bounds.size.height - 49.0f;
    return bounds;
}

- (CGRect)segmentVisiableBounds {
    CGRect bounds = self.view.bounds;
    bounds.size.height = bounds.size.height - 64.0f;
    bounds.size.height = bounds.size.height - 49.0f;
    return bounds;
}

- (CGRect)segmentStaticViewBounds {
    CGRect bounds = self.view.bounds;
    bounds.size.height = bounds.size.height - 64.0f;
    bounds.size.height = bounds.size.height - 44.0f;
    return bounds;
}

- (CGRect)statusNavBounds {
    CGRect bounds = self.view.bounds;
    bounds.size.height = bounds.size.height - 20;
    bounds.size.height = bounds.size.height - 44;
    return bounds;
}

- (CGRect)statusNavTabBarStaticBounds {
    CGRect bounds = self.view.bounds;
    bounds.size.height = bounds.size.height - 20;
    bounds.size.height = bounds.size.height - 44;
    bounds.size.height = bounds.size.height - 49;
    return bounds;
}

- (CGRect)bounds {
    CGRect bounds = self.view.bounds;
    return bounds;
}

- (CGRect)tabBarBounds {
    CGRect bounds = self.view.bounds;
    bounds.size.height = bounds.size.height - self.tabBarController.tabBar.bounds.size.height;
    return bounds;
}

//点击返回按钮
- (void)popController {
    [self.navigationController popViewControllerAnimated:YES];
}

//设置返回按钮
- (void)createNavBarBackButtonItem {
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_down"]
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                     action:@selector(popController)];
    [self.navigationItem setLeftBarButtonItem:barButtonItem];
}

- (void)rightFullWithImage:(UIImage *)image action:(SEL)sel {
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithImage:image
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:sel];
    UIBarButtonItem *spaceButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceButtonItem.width = -20.0f;
    [self.navigationItem setRightBarButtonItems:@[spaceButtonItem, buttonItem]];
}

- (UIButton*)rightWithText:(NSString *)text textColor:(UIColor *)textColor action:(SEL)sel; {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:text forState:UIControlStateNormal];
    [button sizeToFit];
    //右对齐
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    button.titleLabel.font = [UIFont systemFontOfSize:14.0f weight:UIFontWeightThin];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    [button addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    return button;
}

- (void)leftWithText:(NSString *)text action:(SEL)sel {
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:text
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:sel];
}

- (void)leftWithImage:(UIImage *)image action:(SEL)sel {
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                     action:sel];
    [self.navigationItem setLeftBarButtonItem:barButtonItem];
}

- (void)rightWithImage:(UIImage *)image action:(SEL)sel {
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                     action:sel];
    [self.navigationItem setRightBarButtonItem:barButtonItem];
}
- (void)rightWithText:(NSString *)text action:(SEL)sel {
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:text forState:UIControlStateNormal];
    [button sizeToFit];
    //右对齐
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    button.titleLabel.font = [UIFont systemFontOfSize:14.0f weight:UIFontWeightThin];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    if (sel) {
        [button addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    }
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}
- (void)leftWithButtonImage:(UIImage *)image action:(SEL)sel {
    UIButton *button = [UIButton new];
    button.frame = CGRectMake(0, 0, 44, 44);
    // button.backgroundColor = [UIColor redColor];
    [button setImage:image forState:UIControlStateNormal];
    [button addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [self.navigationItem setLeftBarButtonItem:barButtonItem];
}

- (void)rightWithButtonImage:(UIImage *)image action:(SEL)sel {
    UIButton *button = [UIButton new];
    button.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    [button setImage:image forState:UIControlStateNormal];
    [button addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [self.navigationItem setRightBarButtonItem:barButtonItem];
}

- (void)setTitle:(NSString *)title
{
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    titleLabel.font = [UIFont systemFontOfSize:16 weight:UIFontWeightThin];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = title;
    self.navigationItem.titleView = titleLabel;
}

- (NSUInteger)supportedOrientationMasks {
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (UIInterfaceOrientation)supportedOrientations {
    return UIInterfaceOrientationPortrait | UIInterfaceOrientationLandscapeLeft | UIInterfaceOrientationLandscapeRight;
}

@end
