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


#endif /* ColorfullWoodToolDefine_h */
