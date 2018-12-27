//
//  ColorfullWoodToolDefine.h
//  ColorfulWoodTools
//
//  Created by 大新 on 2017/3/21.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#ifndef ColorfullWoodToolDefine_h
#define ColorfullWoodToolDefine_h


#define ColorfullWoodToolDefineWeakify(...) \
rac_keywordify \
metamacro_foreach_cxt(rac_weakify_,, __weak, __VA_ARGS__)

#define ColorfullWoodToolDefineStrongify(...) \
rac_keywordify \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
metamacro_foreach(rac_strongify_,, __VA_ARGS__) \
_Pragma("clang diagnostic pop")

#define CWTDScreenWidth [UIScreen mainScreen].bounds.size.width
#define CWTDScreenHeight [UIScreen mainScreen].bounds.size.height
#define CWTDColorXRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1]//十六进制颜色(不带透明度)

#endif /* ColorfullWoodToolDefine_h */
