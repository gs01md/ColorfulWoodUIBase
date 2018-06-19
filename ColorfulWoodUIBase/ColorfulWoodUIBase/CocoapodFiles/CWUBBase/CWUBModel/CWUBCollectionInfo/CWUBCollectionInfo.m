//
//  CWUBCollectionInfo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/18.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCollectionInfo.h"

@implementation CWUBCollectionInfo

- (instancetype) initWithArray:(NSMutableArray*)array{

    if (self = [super init]) {
        self.m_array = array;
    }

    return self;
}

- (NSMutableArray*)m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray new];
    }

    return _m_array;
}

@end
