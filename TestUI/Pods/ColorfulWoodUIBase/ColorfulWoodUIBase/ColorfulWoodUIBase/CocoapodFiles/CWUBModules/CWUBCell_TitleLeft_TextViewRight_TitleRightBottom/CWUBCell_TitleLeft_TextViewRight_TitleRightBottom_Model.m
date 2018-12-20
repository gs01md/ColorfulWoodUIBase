//
//  CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model.h"

@implementation CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_TextViewRight_TitleRightBottom;
    }

    return self;
}

- (CWUBTextInfo*) m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
    }

    return _m_title_left;
}

- (CWUBTextInfo*) m_input_right{

    if (!_m_input_right) {
        _m_input_right = [CWUBTextInfo new];
    }

    return _m_input_right;
}

- (CWUBTextInfo*) m_title_bottomRight{

    if (!_m_title_bottomRight) {
        _m_title_bottomRight = [CWUBTextInfo new];
    }

    return _m_title_bottomRight;
}

+(CWUBModelBase *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model * model15 = [CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model new];

    model15.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请输入评论：" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model15.m_input_right = [[CWUBTextInfo alloc] initWithText:@"今天天气不错" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model15.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"10/300" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model15.m_bottomLineInfo.m_color = [UIColor redColor];

    if (data) {
        [data addObject:model15];
    }

    return model15;

}
@end
