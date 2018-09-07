//
//  CWUBAttributeTextInfo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/8/1.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBAttributedTextInfo.h"

@implementation CWUBAttributedTextInfo

-(instancetype) initWithText:(NSString*)text {

    if (self = [super init]) {

        self.m_text = text?text:@"";
    }

    return self;
}

- (NSMutableArray<CWUBAttributedSingleRange *> *) m_arrayRange{

    if (!_m_arrayRange) {
        _m_arrayRange = [NSMutableArray<CWUBAttributedSingleRange *>  new];
    }

    return _m_arrayRange;
}

- (NSMutableAttributedString *)m_attributedText{

    if (!_m_attributedText) {
        _m_attributedText = [[NSMutableAttributedString alloc] initWithString:self.m_text];
    }

    return _m_attributedText;
}

/**
 * 添加一段文字及其属性
 */
- (void) interface_addSingleNew:(CWUBAttributedSingleRange *) single{

    /**
     * 依次添加
     */
    if(single){
        NSRange range = single.m_range;
        if (range.length>0 &&
            (range.location + range.length) <= self.m_text.length ) {

            for (CWUBAttributedSingleAttribute * attri in single.m_arrayAttributes) {

                if(self.m_attributedText){
                    [self.m_attributedText addAttribute:attri.m_attributeName value:attri.m_attributeValue range:range];
                }
            }
        }
    }

}

/**
 * 添加一段文字及其属性
 * 由于CWUBAttributedSingleRange里面也用到了不定参数，所以取到了CWUBAttributedSingleRange里的不定参数
 */
- (void) interface_addSingle:(CWUBAttributedSingleRange *) single, ...{

    if (single) {

        [self func_addSingleRange:single];

        // 定义一个指向个数可变的参数列表指针；
        va_list args;

        // 用于存放取出的参数
        CWUBAttributedSingleRange *arg;

        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
        va_start(args, single);

        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
        while ((arg = va_arg(args, CWUBAttributedSingleRange *))) {

            /**
             * 依次添加
             */
            [self func_addSingleRange:arg];
        }

        // 清空参数列表，并置参数指针args无效
        va_end(args);
    }

}

/**
 * 添加属性
 */
- (void) func_addSingleRange:(CWUBAttributedSingleRange*)single{

    if(single){
        NSRange range = single.m_range;
        if (range.length>0 &&
            (range.location + range.length)<=self.m_text.length ) {

            for (CWUBAttributedSingleAttribute * attri in single.m_arrayAttributes) {

                if(self.m_attributedText){
                    [self.m_attributedText addAttribute:attri.m_attributeName value:attri.m_attributeValue range:range];
                }
            }
        }
    }
}


@end
