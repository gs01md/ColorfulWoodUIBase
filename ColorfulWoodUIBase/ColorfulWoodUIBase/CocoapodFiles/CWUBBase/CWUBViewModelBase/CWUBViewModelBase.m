//
//  CWUBViewModelBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBViewModelBase.h"

@implementation CWUBViewModelBase
/**
 * 获取TableView显示的模型
 */
- (CWUBModel *)interface_getShowModel{

    return self.m_model;
}

- (CWUBModel *)m_model{

    if (!_m_model) {
        _m_model = [CWUBModel new];
    }

    return _m_model;
}
@end
