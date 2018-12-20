//
//  CWUBCell_TitleLeft_TitleRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_TitleRight_Model.h"

@implementation CWUBCell_TitleLeft_TitleRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_TitleRight;
    }

    return self;
}

- (CWUBTextInfo*) m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
    }

    return _m_title_left;
}

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

+ (CWUBCell_TitleLeft_TitleRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_TitleRight_Model * model2 = [CWUBCell_TitleLeft_TitleRight_Model new];
    model2.m_type = CWUBCellType_TitleLeft_TitleRight;
    model2.m_title_left = [[CWUBTextInfo alloc] initWithText:@"大标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:23.2] color:[CWUBDefine colorBlueDeep]];
    model2.m_title_right = [[CWUBTextInfo alloc] initWithText:@"大标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:23.2] color:[CWUBDefine colorBlueDeep]];
    model2.m_bottomLineInfo.m_color = [UIColor brownColor];

    [data addObject:model2];

    return model2;
}
@end
