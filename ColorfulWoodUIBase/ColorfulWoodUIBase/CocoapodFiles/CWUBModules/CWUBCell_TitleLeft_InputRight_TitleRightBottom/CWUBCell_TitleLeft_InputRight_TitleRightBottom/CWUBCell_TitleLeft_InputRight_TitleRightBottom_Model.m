//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model.h"

@implementation CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom;
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

+(CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model * model13 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model new];
    model13.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom;

    model13.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model13.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"选择行业222" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model13.m_title_bottomRight.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;
    model13.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model13.m_input_right.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_left;
    //model13.m_input_right.m_regex = ColorfulWoodRegex_1;
    //model13.m_input_right.m_bUppercaseString = YES;
    model13.m_input_right.m_textPlaceholder = @"请输入内容";
    model13.m_input_right.m_margin_bottom = 20.;
    model13.m_input_right.m_margin_top = 20.;
    model13.m_title_bottomRight.m_margin_bottom = 1.;
    model13.m_title_left.m_width = [model13.m_title_left interface_setWidthByContent];
    model13.m_bottomLineInfo.m_color = [UIColor blueColor];
    [data addObject:model13];

    return model13;
}

@end
