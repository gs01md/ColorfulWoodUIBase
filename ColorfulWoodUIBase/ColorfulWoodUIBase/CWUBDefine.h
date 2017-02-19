//
//  CWUBDefine.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/5.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#ifndef CWUBDefine_h
#define CWUBDefine_h

#define CWUBDefine_leftMargin 10.
#define CWUBDefine_rightMargin 10.
#define CWUBDefine_topMargin 2.
#define CWUBDefine_bottomMargin 2.

#define CWUBDefineKeyWindow [UIApplication sharedApplication].keyWindow

#define CWUBDefineDeviceWidth [UIScreen mainScreen].bounds.size.width
#define CWUBDefineDeviceHeight [UIScreen mainScreen].bounds.size.height
#define CWUBDefineSViewWidth self.bounds.size.width
#define CWUBDefineSViewHeight self.bounds.size.height
#define CWUBDefineSViewControllerWidth self.view.bounds.size.width
#define CWUBDefineSViewControllerHeight self.view.bounds.size.height
#define CWUBDefineScreen_Frame (CGRectMake(0, 0 ,CWUBDefineDeviceWidth,CWUBDefineDeviceHeight))


#define CWUBDefineScaleFrom_iPhone6s_Desgin(_X_) (_X_ * (CWUBDefineDeviceWidth/375))

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

#define CWUBDefineLog NSLog(@"\n %s:%d \n\n", __func__, __LINE__)

#endif /* CWUBDefine_h */
