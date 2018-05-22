//
//  CWUBDefine.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef CWUBDefine_h
#define CWUBDefine_h

/**
 * 定义底部的分割线左对齐、有对齐或者居中对齐
 */
typedef enum : NSUInteger {
    CWUBBottomLineType_center = 0,
    CWUBBottomLineType_right,
    CWUBBottomLineType_Left,
} CWUBBottomLineType;


/**
 * 按比例计算宽高
 */
#define CWUBDefineWidthRatio 375.
#define CWUBDefineHeightRatio 667.

#define CWUBDefineDeviceWidth [UIScreen mainScreen].bounds.size.width
#define CWUBDefineDeviceHeight [UIScreen mainScreen].bounds.size.height

#define CWUBDefine_Width(a) a/CWUBDefineWidthRatio*CWUBDefineDeviceWidth
#define CWUBDefine_WidthRatio(a) a/CWUBDefineWidthRatio
#define CWUBDefine_Height(a) a/CWUBDefineHeightRatio*CWUBDefineDeviceHeight
#define CWUBDefine_HeightRatio(a) a/CWUBDefineHeightRatio

#define CWUBDefine_leftMargin 10.
#define CWUBDefine_rightMargin 10.
#define CWUBDefine_topMargin 2.
#define CWUBDefine_bottomMargin 2.

#define CWUBDefineKeyWindow [UIApplication sharedApplication].keyWindow


#define CWUBDefineSViewWidth self.bounds.size.width
#define CWUBDefineSViewHeight self.bounds.size.height
#define CWUBDefineSViewControllerWidth self.view.bounds.size.width
#define CWUBDefineSViewControllerHeight self.view.bounds.size.height
#define CWUBDefineScreen_Frame (CGRectMake(0, 0 ,CWUBDefineDeviceWidth,CWUBDefineDeviceHeight))


/**
 * 创建颜色
 */
#define CWUBDefineCreate_Color(r,g,b,a) [UIColor colorWithRed:r/255. green:g/255. blue:b/255. alpha:a]
#define CWUBDefineCreate_Color_Same(r)  [UIColor colorWithRed:r/255. green:r/255. blue:r/255. alpha:1.]


#define CWUBDefineFontTitle [UIFont systemFontOfSize:16]
#define CWUBDefineFontContent [UIFont systemFontOfSize:12]
#define CWUBDefineColorTitle CWUBDefineCreate_Color(0, 0, 0, 1)
#define CWUBDefineColorContent CWUBDefineCreate_Color(0, 0, 0, 0.7)

#define CWUBDefineMargin 10.
#define CWUBDefineHeightTextField 35.
#define CWUBDefineHeightButton 40.
#define CWUBDefineColorLine [UIColor grayColor]
#define CWUBDefineColorBackGround CWUBDefineCreate_Color(240,239,245,1)

#define CWUBDefineLog NSLog(@"\n %s:%d \n\n", __func__, __LINE__)

/**
 * 水平方向边距
 */
#define CWUBBaseViewConfig_Space_Side_Horizontal CWUBDefine_Width(33.)

/**
 * 水平方向间距
 */
#define CWUBBaseViewConfig_Space_Element_Horizontal CWUBDefine_Width(15.)

/**
 * 垂直方向边距
 */
#define CWUBBaseViewConfig_Space_Side_Vertical CWUBDefine_Width(15.)

/**
 * 标题宽度，默认
 */
#define CWUBBaseViewConfig_Width_Title_Default 70.

/**
 * 图标大小
 */
#define CWUBBaseViewConfig_Width_Icon 20.

/**
 * 包机等大图标
 */
#define CWUBBaseViewConfig_Width_Icon_Big 32.

/**
 * 图标大小
 */
#define CWUBBaseViewConfig_Width_Icon_Little 16.

/**
 * 标题宽度，较宽
 */
#define CWUBBaseViewConfig_Width_Title_Big ((CWUBDefineDeviceWidth - CWUBBaseViewConfig_Space_Side_Horizontal*2.) /2. - CWUBBaseViewConfig_Space_Element_Horizontal)


#endif /* CWUBDefine_h */


#import <Foundation/Foundation.h>

@interface CWUBDefine : NSObject

/**
 * 字体  PingFangSC-Semibold 14.
 */
+(UIFont*) fontDateTitle;

/**
 * 字体  Helvetica 16.
 */
+(UIFont*) fontDate;


/**
 * 操作按钮字体  大 PingFangSC-Semibold 14.2
 */
+(UIFont*) fontOptButton;

/**
 * 字体  大  PingFangSC-Medium 13.2
 */
+(UIFont*) fontBig;

/**
 * 标题 PingFangSC-Light 12.1
 */
+(UIFont*) fontTitle;

/**
 * 字体  大  PingFangSC-Regular 13.2
 */
+(UIFont*) fontBig_Regular;

/**
 * 字体  中 PingFangSC-Semibold 12.1
 */
+(UIFont*) fontMid;

/**
 * 日期字体  中 PingFangSC-Regular 12.1
 */
+(UIFont*) fontDateMid;

/**
 * 字体  小 PingFangSC-Regular 9.7
 */
+(UIFont*) fontSmall;

/**
 * 字体  小 PingFangSC-Regular 10.4
 */
+(UIFont*) fontDetailTime;
#pragma mark - 颜色
/**
 * 颜色  244290
 */
+(UIColor*) colorMain;

/**
 * 颜色  898989
 */
+(UIColor*) colorSec;

/**
 * 颜色  ea5504
 */
+(UIColor*) colorOrange;

/**
 * 接近黑色 0e2242
 */
+(UIColor*) colorBlack;

/**
 * 接近黑色 231815
 */
+(UIColor*) colorBlackPerson;

/**
 * 接近黑色
 */
+(UIColor*) colorBlackRefundTitle;

/**
 * 按钮 ： 接近灰白色 EFEEEE
 */
+(UIColor*) colorOptButton;


/**
 * 接近亮蓝色 00b1ed
 */
+(UIColor*) colorBlueLight;

/**
 * 接近深蓝色 254391
 */
+(UIColor*) colorBlueDeep;

/**
 * 接近橘黄色 ea5504
 */
+(UIColor*) colorOrangeLight;

/**
 * 接近深黄色 ce9855
 */
+(UIColor*) colorOrangeDeep;

/**
 * 接近灰色 727171
 */
+(UIColor*) colorGray;

/**
 * 颜色 ： 藏蓝 0a1232
 */
+(UIColor*) colorPurplishBlue;

/**
 * 导航栏标题  小 PingFangSC-Light 14.1
 */
+(UIFont*) fontNaviTitle;

/**
 * 分割线
 */
+(UIImageView*) imgSep;

/**
 * 获取父视图中指定类名的视图
 */
+ (UIView*)interface_superViewFor:(Class)cls view:(UIView*)view;

@end
