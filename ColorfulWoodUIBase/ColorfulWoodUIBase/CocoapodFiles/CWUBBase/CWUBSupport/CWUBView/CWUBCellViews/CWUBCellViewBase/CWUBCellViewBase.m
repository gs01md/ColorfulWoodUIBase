//
//  CWUBCellViewBase.m
//  ColorfulWoodUIBase
//  内部使用的View,用于Cell中封装的View
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellViewBase.h"

@implementation CWUBCellViewBase

- (instancetype)initWithModel:(CWUBModelBase*)model{

    if (self = [super init]) {
        self.m_model = model;

        [self inner_initWithSubViews];
        [self inner_updateConsrtains];
    }

    return self;
}

- (CWUBModelBase*) m_model{

    if (!_m_model) {
        _m_model = [CWUBModelBase new];
    }

    return _m_model;
}

/**
 * 添加元素
 */
- (void)inner_initWithSubViews{

}

/**
 * 布局
 */
- (void)inner_updateConsrtains{

}

- (void)interface_updateWithModel:(CWUBModelBase*)model{

    self.m_model = model;
}

@end
