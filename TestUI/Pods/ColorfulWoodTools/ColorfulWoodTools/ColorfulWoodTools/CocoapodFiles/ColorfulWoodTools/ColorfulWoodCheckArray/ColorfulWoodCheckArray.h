//
//  ColorfulWoodCheckArray.h
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/5/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorfulWoodCheckArray : NSObject
/**
 * 判断数组是否不为nil,是否是数组，index是否越界
 * @param index 要获取的成员序号
 * @return 成员的字符串，暂时只是支持字符串，因为如果为NULL，返回@“”
 */
+ (NSString*)interface_getFromArray:(NSArray*)array index:(int)index;

/**
 * 判断数组是否不为nil,是否是数组
 */
+ (BOOL)interface_checkArray:(NSArray*)array;
@end
