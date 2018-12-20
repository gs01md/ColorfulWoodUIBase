//
//  UITabBar+ColorfulWoodPoint.h
//  ColorfulWoodPoint
//
//  Created by 大新 on 2018/10/29.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBar (ColorfulWoodPoint)
/**
 size: 圆点宽高 ： <=0时，为6
 color: 圆点颜色 ：可不传，默认红
 */
- (void)interface_showBadgeOnItemIndex:(NSInteger)index size:(float)size color:(UIColor*)color offset:(float)offset;
- (void)interface_hideBadgeOnItemIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
