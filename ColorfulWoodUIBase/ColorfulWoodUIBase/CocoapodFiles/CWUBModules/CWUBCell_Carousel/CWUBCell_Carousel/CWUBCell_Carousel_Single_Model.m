//
//  CWUBCell_Carousel_Single_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Carousel_Single_Model.h"

@implementation CWUBCell_Carousel_Single_Model

- (instancetype) init{

    if (self = [super init]) {
    }

    return self;
}

/**
 * 保存图片信息或文本信息的数组
 */
-(NSMutableArray *) m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray new];
    }

    return _m_array;
}
@end
