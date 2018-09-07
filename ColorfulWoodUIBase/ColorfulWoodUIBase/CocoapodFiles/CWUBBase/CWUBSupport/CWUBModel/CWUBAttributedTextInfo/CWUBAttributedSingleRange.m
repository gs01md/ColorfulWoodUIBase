//
//  CWUBAttributedSingleRange.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/8/1.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBAttributedSingleRange.h"

@implementation CWUBAttributedSingleRange

-(instancetype) initWithRange:(NSRange) range attributes:(CWUBAttributedSingleAttribute*)first, ...{

    if (self = [super init]) {
        self.m_range = range;

        if (first) {

            [self.m_arrayAttributes addObject:first];

            // 定义一个指向个数可变的参数列表指针；
            va_list arg_list;

            // 用于存放取出的参数
            CWUBAttributedSingleAttribute *arg;

            // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
            va_start(arg_list, first);

            // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
            while ((arg = va_arg(arg_list, CWUBAttributedSingleAttribute *))) {
                [self.m_arrayAttributes addObject:arg];
            }

            // 清空参数列表，并置参数指针args无效
            va_end(arg_list);
        }

    }

    return self;
}

#pragma mark - 属性
- (NSMutableArray<CWUBAttributedSingleAttribute*> *) m_arrayAttributes{

    if (!_m_arrayAttributes) {
        _m_arrayAttributes = [NSMutableArray<CWUBAttributedSingleAttribute*> new];
    }

    return _m_arrayAttributes;
}

#pragma mark - 接口

- (void) interface_addAttribute:(CWUBAttributedSingleAttribute*)attribute, ...{

    if (attribute) {

        // 定义一个指向个数可变的参数列表指针；
        va_list args;

        // 用于存放取出的参数
        CWUBAttributedSingleAttribute *arg;

        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, attribute);

        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, CWUBAttributedSingleAttribute *))) {
            [self.m_arrayAttributes addObject:arg];
        }

        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }

}

@end
