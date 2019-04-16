//
//  CWUBCell_TitleLeft_InfoRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InfoRight_Model.h"

@implementation CWUBCell_TitleLeft_InfoRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InfoRight;
    }

    return self;
}

-(CWUBTextInfo*)m_title{
    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }
    return _m_title;
}

-(CWUBTextInfo*)m_info{
    if (!_m_info) {
        _m_info = [CWUBTextInfo new];
    }
    return _m_info;
}

+(CWUBCell_TitleLeft_InfoRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InfoRight_Model *model =[CWUBCell_TitleLeft_InfoRight_Model new];
    model.m_title = [[CWUBTextInfo alloc] initWithText:@"智能审核" font:[UIFont systemFontOfSize:17.] color:CWUBDefineCreate_ColorRGB(0xFF6634)];
    model.m_title.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model.m_title.m_labelTextVerticalType = CWUBLabelTextVerticalType_center;

    model.m_title.m_height = CWUBDefine_Width(44.);
    model.m_title.m_width = CWUBDefine_Width(138);
    model.m_title.m_margin_top = CWUBDefine_Width(30);
    model.m_title.m_margin_bottom = CWUBDefine_Width(30);

    model.m_info = [[CWUBTextInfo alloc] initWithText:@"平台审核" font:[UIFont systemFontOfSize:17.] color:CWUBDefineCreate_ColorRGB(0xFF6634)];
    model.m_info.m_height = CWUBDefine_Width(44.);
    model.m_info.m_width = CWUBDefine_Width(138);
    model.m_info.m_margin_top = CWUBDefine_Width(30);
    model.m_info.m_margin_bottom = CWUBDefine_Width(30);
    model.m_info.m_labelTextVerticalType = CWUBLabelTextVerticalType_center;

    model.m_title.m_event_opt_code = @"智能审核";
    model.m_info.m_event_opt_code = @"下一步";

    model.m_info.m_color_backGround = CWUBDefineCreate_ColorRGB(0xFF6634);
    model.m_title.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0xD03B36)];

    [data addObject:model];

    return model;
}

@end
