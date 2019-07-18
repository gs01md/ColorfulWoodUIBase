//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/15.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model.h"

@implementation CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom_CodeRight;
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

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

+(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model * model33 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model new];
    model33.m_title_left = [[CWUBTextInfo alloc] initWithText:@"验证码" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_Color(39., 39., 39., 1)];
    model33.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"选择行业222" font:[UIFont fontWithName:@"PingFangSC-Regular" size:12] color:CWUBDefineCreate_Color(222, 67, 64, 1)];
    model33.m_title_bottomRight.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;
    model33.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0x1A1A1A)];
    model33.m_input_right.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;
    model33.m_input_right.m_regex = ColorfulWoodRegex_1;
    model33.m_input_right.m_textPlaceholder = @"请输入内容";
    model33.m_input_right.m_margin_bottom = 20.;
    model33.m_input_right.m_margin_top = 20.;
    model33.m_title_bottomRight.m_margin_bottom = 1.;
    model33.m_title_left.m_width = [model33.m_title_left interface_setWidthByContent];
    model33.m_bottomLineInfo.m_color = [UIColor blueColor];
    model33.m_title_right = [[CWUBTextInfo alloc] initWithText:@"获取验证码" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13.] color:CWUBDefineCreate_ColorRGB(0x999999)];
    model33.m_title_right.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0xEBEBEB)];
    model33.m_title_right.m_color_backGround = CWUBDefineCreate_ColorRGB(0xEBEBEB);
    model33.m_title_right.m_lblCanClick = YES;
    model33.m_title_right.m_width = 90.;
    model33.m_title_right.m_height = 25;
    model33.m_title_right.m_valueOpt = 60;
    [data addObject:model33];

    return model33;
}

+(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model *)tester_dataWithArray2:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model * model33 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model new];
    model33.m_title_left = [[CWUBTextInfo alloc] initWithText:@"产品单价" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_Color(39., 39., 39., 1)];
    model33.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFangSC-Regular" size:12] color:CWUBDefineCreate_Color(222, 67, 64, 1)];
    model33.m_title_bottomRight.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;
    model33.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0x1A1A1A)];
    model33.m_input_right.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_left;
    //model33.m_input_right.m_regex = ColorfulWoodRegex_1;
    model33.m_input_right.m_textPlaceholder = @"请输入内容";
    model33.m_input_right.m_margin_bottom = 20.;
    model33.m_input_right.m_margin_top = 20.;
    model33.m_title_bottomRight.m_margin_bottom = 1.;
    model33.m_title_left.m_width = [model33.m_title_left interface_setWidthByContent];
    model33.m_bottomLineInfo.m_color = [UIColor blueColor];
    model33.m_title_right = [[CWUBTextInfo alloc] initWithText:@"元" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13.] color:CWUBDefineCreate_ColorRGB(0x999999)];
    model33.m_title_right.m_width = 20.;
    model33.m_title_right.m_height = 25;
    model33.m_title_right.m_valueOpt = 60;
    [data addObject:model33];

    return model33;
}


@end
