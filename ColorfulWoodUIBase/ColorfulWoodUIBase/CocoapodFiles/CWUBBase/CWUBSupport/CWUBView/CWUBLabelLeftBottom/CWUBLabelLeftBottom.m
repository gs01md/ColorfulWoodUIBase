//
//  CWUBLabelLeftBottom.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBLabelLeftBottom.h"

@implementation CWUBLabelLeftBottom

- (id)initWithFrame:(CGRect)frame {
    return [super initWithFrame:frame];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    textRect.origin.y = bounds.origin.y+bounds.size.height - textRect.size.height;
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}

@end
