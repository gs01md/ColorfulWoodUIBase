//
//  CWUBTextInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CWUBLabelTextVerticalType.h"
#import "CWUBMarginBase.h"

@interface CWUBTextInfo : CWUBMarginBase
@property(nonatomic,strong) NSString* m_text;
@property(nonatomic,strong) UIFont* m_font;
@property(nonatomic,strong) UIColor* m_color;
@property(nonatomic,strong) UIColor* m_color_backGroud;

@property(nonatomic,strong) NSString* m_textPlaceholder;
@property(nonatomic,assign) BOOL m_isHidden;
@property(nonatomic,assign) CWUBLabelTextVerticalType m_labelTextVerticalType;

/**
 * 行数:0=多行
 */
@property(nonatomic,assign) int m_numberOfLines;

/**
 * 设置宽度
 */
@property(nonatomic,assign) float m_width;

-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color;

-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color backColor:(UIColor*)backColor; 

-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color holder:(NSString*)holder;

-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color width:(float)width;
@end
