//
//  CWUBTextInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CWUBLabelTextAlignmentType.h"
#import "CWUBMarginBase.h"
#import "CWUBCornerInfo.h"

@interface CWUBTextInfo : CWUBMarginBase
@property(nonatomic, strong) NSString * m_text;
@property(nonatomic, strong) UIFont * m_font;
@property(nonatomic, strong) UIColor * m_color;
@property(nonatomic, strong) UIColor * m_color_backGroud;

/**
 * 点击该Label时的操作
 */
@property(nonatomic, strong) NSString  * m_event_opt_code;

/**
 * 是否不可输入（textfield等控件）
 */
@property(nonatomic, assign) BOOL m_noEnabled;

/**
 * 圆角参数
 */
@property(nonatomic, strong) CWUBCornerInfo * m_cornerInfo;

@property(nonatomic, strong) NSString * m_textPlaceholder;
@property(nonatomic, assign) BOOL m_isHidden;
@property(nonatomic, assign) CWUBLabelTextVerticalType m_labelTextVerticalType;
@property(nonatomic, assign) CWUBLabelTextHorizontalType m_labelTextHorizontalType;

/**
 * 行数:0=多行
 */
@property(nonatomic, assign) int m_numberOfLines;

/**
 * 设置宽度
 */
@property(nonatomic, assign) float m_width;

/**
 * 设置高度
 */
@property(nonatomic, assign) float m_height;

/**
 * 设置最大宽度，用于
 */
@property(nonatomic, assign) float m_width_max;

/**
 * 正则表达式，限制规则，不符合则禁止输入
 */
@property(nonatomic, strong) NSString * m_regex;

/**
 * 输入时，小写字母自动变成大写
 */
@property(nonatomic, assign) BOOL m_bUppercaseString;

/**
 * 文字在label中的边框大小
 */
@property(nonatomic, assign) UIEdgeInsets m_insets;


- (instancetype)initWithText:(NSString *)text font:(UIFont *)font color:(UIColor *)color;

- (instancetype)initWithText:(NSString *)text font:(UIFont *)font color:(UIColor *)color backColor:(UIColor *)backColor;

- (instancetype)initWithText:(NSString *)text font:(UIFont *)font color:(UIColor *)color holder:(NSString *)holder;

- (instancetype)initWithText:(NSString *)text font:(UIFont *)font color:(UIColor *)color width:(float)width;

/**
 * 默认的初始化接口
 */
+ (instancetype)interface_nullCheckInit:(CWUBTextInfo *)info;

/**
 * 根据内容设置宽度，适合单行的标题
 */
- (float)interface_setWidthByContent;
@end
