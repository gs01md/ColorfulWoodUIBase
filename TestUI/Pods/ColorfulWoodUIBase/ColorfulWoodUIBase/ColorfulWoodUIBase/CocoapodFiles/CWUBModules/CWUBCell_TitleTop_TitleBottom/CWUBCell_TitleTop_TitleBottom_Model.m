//
//  CWUBCell_TitleTop_TitleBottom_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleTop_TitleBottom_Model.h"

@implementation CWUBCell_TitleTop_TitleBottom_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleTop_TitleBottom;
    }

    return self;
}

- (CWUBTextInfo*) m_title_top{

    if (!_m_title_top) {
        _m_title_top = [CWUBTextInfo new];
    }

    return _m_title_top;
}

- (CWUBTextInfo*) m_title_bottom{

    if (!_m_title_bottom) {
        _m_title_bottom = [CWUBTextInfo new];
    }

    return _m_title_bottom;
}

+(CWUBModelBase *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleTop_TitleBottom_Model * model15 = [CWUBCell_TitleTop_TitleBottom_Model new];
    model15.m_type = CWUBCellType_TitleTop_TitleBottom;

    model15.m_title_top = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model15.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model15.m_title_bottom.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;
    model15.m_bottomLineInfo.m_color = [UIColor redColor];

    if (data) {
        [data addObject:model15];
    }

    return model15;

}
@end
