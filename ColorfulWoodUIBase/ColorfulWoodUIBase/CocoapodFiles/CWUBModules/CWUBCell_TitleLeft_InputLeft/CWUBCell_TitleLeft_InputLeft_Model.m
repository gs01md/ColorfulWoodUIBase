//
//  CWUBCell_TitleLeft_InputLeft_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputLeft_Model.h"

@implementation CWUBCell_TitleLeft_InputLeft_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InputLeft;
    }

    return self;
}

- (CWUBTextInfo*) m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }

    return _m_title;
}

- (CWUBTextInfo*) m_input{

    if (!_m_input) {
        _m_input = [CWUBTextInfo new];
    }

    return _m_input;
}

+(CWUBCell_TitleLeft_InputLeft_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InputLeft_Model * model14 = [CWUBCell_TitleLeft_InputLeft_Model new];
    model14.m_type = CWUBCellType_TitleLeft_InputLeft;

    model14.m_title = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0x333333)];
    [model14.m_title interface_setWidthByContent];
    model14.m_input = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0x1A1A1A)];
    model14.m_input.m_textPlaceholder = @"请输入您的真实姓名";
    [data addObject:model14];

    return model14;
}
@end
