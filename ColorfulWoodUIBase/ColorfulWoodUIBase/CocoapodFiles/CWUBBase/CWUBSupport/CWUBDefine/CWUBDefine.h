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
#define CWUBDefineCreate_ColorRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1]//十六进制颜色(不带透明度)

#define CWUBDefineCreate_ColorRGBAlpha(rgbValue,alphaValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]//十六进制颜色(带透明度)

#define CWUBDefineFontTitle [UIFont systemFontOfSize:16]
#define CWUBDefineFontContent [UIFont systemFontOfSize:12]
#define CWUBDefineColorTitle CWUBDefineCreate_Color(0, 0, 0, 1)
#define CWUBDefineColorContent CWUBDefineCreate_Color(0, 0, 0, 0.7)
#define CWUBDefine_Font_Regular_Size(x) [UIFont fontWithName:@"PingFangSC-Regular" size:x]

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
 * 垂直方向间距
 */
#define CWUBBaseViewConfig_Space_Element_Vertical CWUBDefine_Width(15.)

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

/**
 * 弃用
 */
#define CWUBBaseIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

/**
 * 判断iPHoneXr
 */
#define CWUBBDefine_IS_XR ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !UI_IS_IPAD : NO)

/**
 * 判断iPHoneX
 */
#define CWUBBDefine_IS_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !UI_IS_IPAD : NO)

/**
 * 判断iPHoneXs
 */
#define CWUBBDefine_IS_XS ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !UI_IS_IPAD : NO)

/**
 * 判断iPhoneXs Max
 */
#define CWUBBDefine_IS_XS_MAX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !UI_IS_IPAD : NO)

/**
 * 判断iPhoneX系列
 */
#define CWUBBDefine_IPhoneX_All ([UIScreen mainScreen].bounds.size.height == 812 || [UIScreen mainScreen].bounds.size.height == 896)

/**
 * 状态栏、导航栏、标签栏高度
 */
#define CWUBBDefine_Height_StatusBar [[UIApplication sharedApplication] statusBarFrame].size.height

/**
 * 导航栏高度
 */
#define CWUBBDefine_Height_NavBar 44.0f

/**
 * 顶部高度： 状态栏 + 导航栏高度
 */
#define CWUBBDefine_Height_TopBar (Height_StatusBar + Height_NavBar)

/**
 * 底部分页Tabbar高度
 */
#define CWUBBDefine_Height_TapBar (CWUBBDefine_IPhoneX_All ? 83.0f:49.0f)

/**
 * 底部安全区高度 iPhoneX系列有值
 */
#define CWUBBDefine_Height_BottomSafe (CWUBBDefine_IPhoneX_All? 34.0f:0.0f)


#define CWUBBDefine_WeakSelf __weak typeof(self) weakSelf = self;

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
