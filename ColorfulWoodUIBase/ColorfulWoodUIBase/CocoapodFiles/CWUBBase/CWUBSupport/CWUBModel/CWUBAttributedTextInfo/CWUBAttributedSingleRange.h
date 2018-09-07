//
//  CWUBAttributedSingleRange.h
//  ColorfulWoodUIBase
//  属性文字 一段文字的属性
//  首先是 Range ,然后，每个Range对应一个数组,数组里面是属性和属性值
//  Created by 大新 on 2018/8/1.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWUBAttributedSingleAttribute.h"

@interface CWUBAttributedSingleRange : NSObject

/**
 * 设置属性的文字范围
 */
@property(nonatomic, assign)NSRange m_range;

/**
 * 属性类型及值
 */
@property(nonatomic, strong)NSMutableArray<CWUBAttributedSingleAttribute*> * m_arrayAttributes;

- (instancetype) initWithRange:(NSRange) range attributes:(CWUBAttributedSingleAttribute*)first, ...;

- (void) interface_addAttribute:(CWUBAttributedSingleAttribute*)attribute, ...;

@end
