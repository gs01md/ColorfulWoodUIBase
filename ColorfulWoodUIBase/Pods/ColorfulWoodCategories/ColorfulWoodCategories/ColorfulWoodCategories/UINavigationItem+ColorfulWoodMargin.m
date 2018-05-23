//
//  UINavigationItem+ColorfulWoodMargin.m
//  ColorfulWoodCategories
//
//  Created by 大新 on 2017/2/17.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "UINavigationItem+ColorfulWoodMargin.h"

@implementation UINavigationItem (ColorfulWoodMargin)
- (void)setLeftBarButtonItem:(UIBarButtonItem *)_leftBarButtonItem
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        UIBarButtonItem *negativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        negativeSeperator.width = -20;//此处修改到边界的距离，请自行测试
        
        if (_leftBarButtonItem)
        {
            [self setLeftBarButtonItems:@[negativeSeperator, _leftBarButtonItem]];
        }
        else
        {
            [self setLeftBarButtonItems:@[negativeSeperator]];
        }
        
        
    }
    else
    {
        [self setLeftBarButtonItem:_leftBarButtonItem animated:NO];
    }
}

- (void)setRightBarButtonItem:(UIBarButtonItem *)_rightBarButtonItem
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        UIBarButtonItem *negativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        //-16是贴边
        negativeSeperator.width = 4;//此处修改到边界的距离，请自行测试
        
        if (_rightBarButtonItem)
        {
            [self setRightBarButtonItems:@[negativeSeperator, _rightBarButtonItem]];
        }
        else
        {
            [self setRightBarButtonItems:@[negativeSeperator]];
        }
        
    }
    else
    {
        [self setRightBarButtonItem:_rightBarButtonItem animated:NO];
    }
}
@end
