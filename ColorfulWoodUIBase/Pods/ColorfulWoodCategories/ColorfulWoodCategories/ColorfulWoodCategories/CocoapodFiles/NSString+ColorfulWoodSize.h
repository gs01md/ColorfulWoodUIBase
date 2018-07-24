//
//  NSString+ColorfulWoodSize.h
//  ColorfulWoodCategories
//
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@interface NSString (ColorfulWoodSize)

- (CGFloat)interface_getStringWidthWithFont:(UIFont *)font;

- (CGFloat)interface_getStringHeightWithWidth:(CGFloat)width withFont:(UIFont *)font;

+ (CGFloat)interface_getStringWidth:(NSString *)str withFont:(UIFont *)font;

+ (CGFloat)interface_getStringHeight:(NSString *)str withWidth:(CGFloat)width withFont:(UIFont *)font;

@end
