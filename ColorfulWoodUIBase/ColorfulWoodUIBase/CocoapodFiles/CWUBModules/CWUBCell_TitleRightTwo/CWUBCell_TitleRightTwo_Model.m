//
//  CWUBCell_TitleRightTwo_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/7/13.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleRightTwo_Model.h"

@implementation CWUBCell_TitleRightTwo_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_typeName = @"CWUBCell_TitleRightTwo";
    }

    return self;
}

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

- (CWUBTextInfo*) m_title_right2{

    if (!_m_title_right2) {
        _m_title_right2 = [CWUBTextInfo new];
    }

    return _m_title_right2;
}



+(CWUBCell_TitleRightTwo_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleRightTwo_Model * model13 = [CWUBCell_TitleRightTwo_Model new];

    model13.m_title_right = [[CWUBTextInfo alloc] initWithText:@"确认订单" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:11] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];;
    model13.m_title_right.m_height = CWUBDefine_Width(23);
    model13.m_title_right.m_width = CWUBDefine_Width(66);
    model13.m_title_right.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model13.m_title_right.m_color_backGround = CWUBDefineCreate_ColorRGB(0xFF6634);
    model13.m_title_right.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0xFF6634)];
    model13.m_title_right.m_event_opt_code = @"确认订单";

    model13.m_title_right2 = [[CWUBTextInfo alloc] initWithText:@"驳回订单" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:11] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];;
    model13.m_title_right2.m_height = CWUBDefine_Width(23);
    model13.m_title_right2.m_width = CWUBDefine_Width(66);
    model13.m_title_right2.m_color_backGround = CWUBDefineCreate_ColorRGB(0x86ADFB);
    model13.m_title_right2.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model13.m_title_right2.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0x86ADFB)];
    model13.m_title_right2.m_event_opt_code = @"驳回订单";
    
    model13.m_bottomLineInfo.m_color = CWUBDefineCreate_ColorRGB(0xF8F8F8);
    model13.m_bottomLineInfo.m_height = 5;
    model13.m_bottomLineInfo.m_margin_left = 1.;
    model13.m_bottomLineInfo.m_margin_right = 1;
    [data addObject:model13];

    return model13;
}

@end
