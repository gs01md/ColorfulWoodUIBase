//
//  CWUBLabelTextAlignmentType.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

/**
 * 定义Label文字在垂直方向上显示位置：上部对齐、居中、下部对齐
 */
typedef enum : NSUInteger {
    CWUBLabelTextVerticalType_default = 0,//不做处理
    CWUBLabelTextVerticalType_center,
    CWUBLabelTextVerticalType_top,
    CWUBLabelTextVerticalType_bottom,
} CWUBLabelTextVerticalType;

/**
 * 定义Label文字在水平方向上显示位置：左对齐、居中、右对齐
 */
typedef enum : NSUInteger {
    CWUBLabelTextHorizontalType_default = 0,//不做处理
    CWUBLabelTextHorizontalType_left,
    CWUBLabelTextHorizontalType_center,
    CWUBLabelTextHorizontalType_right,
} CWUBLabelTextHorizontalType;
