//
//  NSString+ColorfulWoodSize.m
//  ColorfulWoodCategories
//
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "NSString+ColorfulWoodSize.h"

@implementation NSString (ColorfulWoodSize)

- (CGFloat)interface_getStringWidthWithFont:(UIFont *)font{

    if (self.length < 1) {
        return  0.1;
    }

    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font}];

    CGRect rect = [attributedText boundingRectWithSize:(CGSize){MAXFLOAT, MAXFLOAT} options:NSStringDrawingUsesLineFragmentOrigin context:nil];

    CGSize size = rect.size;
    return  ceilf(size.width);
}

- (CGFloat)interface_getStringHeightWithWidth:(CGFloat)width withFont:(UIFont *)font{

    NSDictionary *attribute = @{NSFontAttributeName: font};
    CGSize textsize = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil].size;
    return textsize.height;
}

+ (CGFloat)interface_getStringWidth:(NSString *)str withFont:(UIFont *)font{

    if (!str || str.length < 1) {
        return  0.1;
    }

    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:str attributes:@{NSFontAttributeName:font}];

    CGRect rect = [attributedText boundingRectWithSize:(CGSize){MAXFLOAT, MAXFLOAT} options:NSStringDrawingUsesLineFragmentOrigin context:nil];

    CGSize size = rect.size;
    return  ceilf(size.width);
}

+ (CGFloat)interface_getStringHeight:(NSString *)str withWidth:(CGFloat)width withFont:(UIFont *)font{

    NSDictionary *attribute = @{NSFontAttributeName: font};
    CGSize textsize = [str boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil].size;
    return textsize.height;
}
@end
