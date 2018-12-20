//
//  CWUBBottomLineInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/28.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWUBBottomLineType.h"
#import <UIKit/UIKit.h>
#import "CWUBMarginBase.h"

@interface CWUBBottomLineInfo : CWUBMarginBase
/**
 * 底部分割线的样式
 */
@property(nonatomic, assign)CWUBBottomLineType  m_bottomLineType;

/**
 * 设置底部分割线的颜色，实心
 * 设置了之后 底部分割线自动隐藏
 */
@property(nonatomic, strong)UIColor *m_color;

/**
 * 自定义分割线
 */
@property(nonatomic, strong)NSString *m_image;

/**
 * 是否隐藏底部的分割线
 */
@property(nonatomic, assign)BOOL m_isHiddenBottom;

/**
 * 分割线高度
 */
@property(nonatomic, assign)float m_height;
@end
