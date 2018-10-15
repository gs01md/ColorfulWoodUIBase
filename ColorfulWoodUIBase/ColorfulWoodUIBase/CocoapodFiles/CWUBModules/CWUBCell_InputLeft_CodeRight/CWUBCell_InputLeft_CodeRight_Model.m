//
//  CWUBCell_InputLeft_CodeRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/15.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCell_InputLeft_CodeRight_Model.h"

@implementation CWUBCell_InputLeft_CodeRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_InputLeft_CodeRight;
    }

    return self;
}

- (CWUBTextInfo*) m_input_left{

    if (!_m_input_left) {
        _m_input_left = [CWUBTextInfo new];
    }

    return _m_input_left;
}

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

+(CWUBCell_InputLeft_CodeRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_InputLeft_CodeRight_Model * model13 = [CWUBCell_InputLeft_CodeRight_Model new];

    model13.m_input_left = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0x1A1A1A)];
    model13.m_input_left.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_left;
    model13.m_input_left.m_textPlaceholder = @"请输入内容";
    model13.m_input_left.m_margin_bottom = 20.;
    model13.m_input_left.m_margin_top = 20.;
    model13.m_bottomLineInfo.m_color = [UIColor blueColor];
    model13.m_title_right = [[CWUBTextInfo alloc] initWithText:@"获取验证码" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13.] color:CWUBDefineCreate_ColorRGB(0x999999)];
    model13.m_title_right.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0xEBEBEB)];
    model13.m_title_right.m_color_backGround = CWUBDefineCreate_ColorRGB(0xEBEBEB);
    model13.m_title_right.m_lblCanClick = YES;
    model13.m_title_right.m_width = 90.;
    model13.m_title_right.m_height = 25;
    model13.m_title_right.m_valueOpt = 60;
    [data addObject:model13];

    return model13;
}

@end
