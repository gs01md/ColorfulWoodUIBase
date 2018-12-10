//
//  ColorfulWoodCheckArray.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/5/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "ColorfulWoodCheckArray.h"

@implementation ColorfulWoodCheckArray

/**
 * 判断数组是否不为nil,是否是数组，index是否越界
 * @param index 要获取的成员序号
 * @return 成员的字符串，暂时只是支持字符串，因为如果为NULL，返回@“”
 */
+ (NSString*)interface_getFromArray:(NSArray*)array index:(int)index{

    NSString * str = @"";
    if (array &&
        ([array isKindOfClass:[NSArray class]] ||
         [array isKindOfClass:[NSMutableArray class]] ||
         [[array class] isEqual:[NSArray class]] ||
         [[array class] isEqual:[NSMutableArray class]] ||
         [[array class] isKindOfClass:[NSArray class]] ||
         [[array class] isKindOfClass:[NSMutableArray class]] ||
         [[[array class] superclass] isEqual:[NSArray class]] ||
         [[[array class] superclass] isEqual:[NSMutableArray class]] ||
         [[[array class] superclass] isKindOfClass:[NSArray class]] ||
         [[[array class] superclass] isKindOfClass:[NSMutableArray class]]
         ) ) {

            if (index > -1 && array.count > index) {
                NSString *temp = array[index];
                if (temp) {
                    str = temp;
                }
            }
        }

    return str;
}

/**
 * 判断数组是否不为nil,是否是数组
 */
+ (BOOL)interface_checkArray:(NSArray*)array{

    if (array &&
        (
         [array isKindOfClass:[NSArray class]] ||
         [array isKindOfClass:[NSMutableArray class]] ||
         [[array class] isEqual:[NSArray class]] ||
         [[array class] isEqual:[NSMutableArray class]] ||
         [[array class] isKindOfClass:[NSArray class]] ||
         [[array class] isKindOfClass:[NSMutableArray class]] ||
         [[[array class] superclass] isEqual:[NSArray class]] ||
         [[[array class] superclass] isEqual:[NSMutableArray class]] ||
         [[[array class] superclass] isKindOfClass:[NSArray class]] ||
         [[[array class] superclass] isKindOfClass:[NSMutableArray class]]
         ) ) {

            return TRUE;
        }else{
            return FALSE;
        }

}

@end
