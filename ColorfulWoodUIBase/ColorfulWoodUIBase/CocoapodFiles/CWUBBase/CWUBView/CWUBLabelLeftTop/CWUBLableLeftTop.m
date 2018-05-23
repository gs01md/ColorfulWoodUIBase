//
//  CWUBLableLeftTop.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2016/12/24.
//  Copyright © 2016年 ColorfulWood. All rights reserved.
//

#import "CWUBLableLeftTop.h"

@implementation CWUBLableLeftTop

- (id)initWithFrame:(CGRect)frame {
    return [super initWithFrame:frame];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    textRect.origin.y = bounds.origin.y;
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}

@end
