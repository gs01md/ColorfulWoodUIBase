//
//  UIImage+ColorfulWood.h
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/9/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ColorfulWood)

- (NSData *)interface_scaleWithCompressionQuality:(CGFloat)quality;

// 指定宽度按比例缩放
- (UIImage *) interface_scaleWithWidth:(CGFloat)defineWidth;

@end
