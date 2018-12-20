//
//  UITabBar+ColorfulWoodPoint.m
//  ColorfulWoodPoint
//
//  Created by 大新 on 2018/10/29.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "UITabBar+ColorfulWoodPoint.h"


#define kBadgeViewTag 200  // 红点起始tag值

@implementation UITabBar (ColorfulWoodPoint)


//显示小红点
- (void)interface_showBadgeOnItemIndex:(NSInteger)index size:(float)size color:(UIColor*)color offset:(float)offset{

    if (size<=0) {
        size = 6.;
    }

    if (!color) {
        color = [UIColor redColor];
    }

    if (offset <=0) {
        offset = 9.;
    }

    [self removeBadgeOnItemIndex:index];


    UIView *badgeView = [[UIView alloc]init];
    badgeView.tag = kBadgeViewTag + index;
    badgeView.layer.cornerRadius = size / 2;
    badgeView.backgroundColor = color;
    [self addSubview:badgeView];

    // 设置小红点的位置
    int i = 0;
    for (UIView* subView in self.subviews){
        if ([subView isKindOfClass:NSClassFromString(@"UITabBarButton")]){
            // 找到需要加小红点的view，根据frame设置小红点的位置
            if (i == index) {
                // 数字9为向右边的偏移量，可以根据具体情况调整
                CGFloat x = subView.frame.origin.x + subView.frame.size.width / 2 + offset;
                CGFloat y = 6;
                badgeView.frame = CGRectMake(x, y, size, size);
                break;
            }
            i++;
        }
    }
}

// 隐藏小红点
- (void)interface_hideBadgeOnItemIndex:(NSInteger)index{
    [self removeBadgeOnItemIndex:index];
}

// 移除小红点
- (void)removeBadgeOnItemIndex:(NSInteger)index{
    // 根据tag的值移除
    for (UIView *subView in self.subviews) {
        if (subView.tag == kBadgeViewTag + index) {
            [subView removeFromSuperview];
        }
    }
}

@end
