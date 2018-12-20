//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model.h"

@implementation CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom_ImgRight;
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

- (CWUBImageInfo*) m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageInfo new];
    }

    return _m_img_right;
}

+(CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model * model14 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model new];
    model14.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom_ImgRight;

    model14.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model14.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model14.m_title_bottomRight.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;
    model14.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model14.m_input_right.m_textPlaceholder = @"请输入内容";
    model14.m_input_right.m_bUppercaseString = YES;
    model14.m_input_right.m_margin_bottom = 20.;
    model14.m_input_right.m_margin_top = 20.;
    model14.m_title_bottomRight.m_margin_bottom = 1.;
    model14.m_input_right.m_regex = ColorfulWoodRegex_1;
    model14.m_title_left.m_width = [model14.m_title_left interface_setWidthByContent];
    model14.m_bottomLineInfo.m_color = [UIColor blueColor];
    model14.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    [data addObject:model14];

    return model14;
}
@end
