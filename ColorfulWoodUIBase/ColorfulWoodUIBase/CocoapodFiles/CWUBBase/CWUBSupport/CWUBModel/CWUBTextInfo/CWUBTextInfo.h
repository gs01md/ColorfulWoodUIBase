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
#import "CWUBModelKeyboard.h"

@interface CWUBTextInfo : CWUBMarginBase
@property(nonatomic, strong) NSString * m_text;
@property(nonatomic, strong) UIFont * m_font;
@property(nonatomic, strong) UIColor * m_color;
@property(nonatomic, strong) UIColor * m_color_backGround;

/**
 * textView 是否需要滚动，默认不需要
 */
@property(nonatomic, assign) BOOL m_textView_scroll;

/**
 * 另外一个数值，用于倒计时等操作
 */
@property(nonatomic, assign) int m_valueOpt;

/**
 * 是否实时监听textfield变化
 */
@property(nonatomic, assign) BOOL m_textField_realTime;

/**
 * 点击该Label时的操作
 */
@property(nonatomic, strong) NSString  * m_event_opt_code;

/**
 * Label是否可以点击
 */
@property(nonatomic, assign) BOOL m_lblCanClick;

/**
 * 是否不可输入（textfield等控件）
 */
@property(nonatomic, assign) BOOL m_noEnabled;

/**
 * 圆角参数
 */
@property(nonatomic, strong) CWUBCornerInfo * m_cornerInfo;

@property(nonatomic, strong) NSString * m_textPlaceholder;
/**
 * textView用到设置默认文字颜色
 */
@property(nonatomic, strong) UIColor * m_colorPlaceholder;

@property(nonatomic, assign) BOOL m_isHidden;
@property(nonatomic, assign) CWUBLabelTextVerticalType m_labelTextVerticalType;
@property(nonatomic, assign) CWUBLabelTextHorizontalType m_labelTextHorizontalType;

/**
 * 行数:0=多行
 */
@property(nonatomic, assign) int m_numberOfLines;

/**
 * 限制输入框输入的字数
 */
@property(nonatomic, assign) int m_limitInputNum;

/**
 * 设置宽度
 */
@property(nonatomic, assign) float m_width;

/**
 * 设置高度
 */
@property(nonatomic, assign) float m_height;

/**
 * 设置最大宽度
 */
@property(nonatomic, assign) float m_width_max;

/**
 * 设置最小高度
 */
@property(nonatomic, assign) float m_height_min;

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

/**
 * 键盘样式
 */
@property(nonatomic, strong) CWUBModelKeyboard *m_keyboard;

/**
 * 设置边角圆点属性
 */
@property(nonatomic, strong) CWUBModelPoint *m_modelPoint;

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
