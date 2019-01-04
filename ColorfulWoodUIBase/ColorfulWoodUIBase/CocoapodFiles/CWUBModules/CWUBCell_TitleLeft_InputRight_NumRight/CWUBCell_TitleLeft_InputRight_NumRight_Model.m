//
//  CWUBCell_TitleLeft_InputRight_NumRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/2.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InputRight_NumRight_Model.h"

@implementation CWUBCell_TitleLeft_InputRight_NumRight_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_typeName = @"CWUBCell_TitleLeft_InputRight_NumRight";
    }

    return self;
}

- (CWUBTextInfo*) m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
    }

    return _m_title_left;
}

- (CWUBTextInfo*) m_input_center{

    if (!_m_input_center) {
        _m_input_center = [CWUBTextInfo new];
    }

    return _m_input_center;
}

- (CWUBTextInfo*) m_title_numRight{

    if (!_m_title_numRight) {
        _m_title_numRight = [CWUBTextInfo new];
    }

    return _m_title_numRight;
}

+(CWUBCell_TitleLeft_InputRight_NumRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InputRight_NumRight_Model * model13 = [CWUBCell_TitleLeft_InputRight_NumRight_Model new];


    CWUBAttributedTextInfo *title = [[CWUBAttributedTextInfo alloc] initWithText:@"*优惠券名称"];

    [title interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(0, 1)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_ColorRGB(0xFF6634)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFang-SC-Regular" size:15.]],nil],nil
     ];
    [title interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(1, 5)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_ColorRGB(0x212121)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFang-SC-Regular" size:15.]],nil],nil
     ];

    model13.m_title_left = title;
    model13.m_title_left.m_width = [model13.m_title_left interface_setWidthByContent]+10;


    model13.m_input_center = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFang-SC-Regular" size:14] color:CWUBDefineCreate_ColorRGB(0x212121)];
    model13.m_input_center.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_left;
    //model13.m_input_center.m_regex = @"^[0-9]*$";
    //model13.m_input_right.m_bUppercaseString = YES;
    model13.m_input_center.m_textField_realTime = YES;
    model13.m_input_center.m_textPlaceholder = @"请填写优惠券的名称";
    model13.m_input_center.m_margin_bottom = 20.;
    model13.m_input_center.m_margin_top = 20.;
    model13.m_input_center.m_margin_left = 2.;
    model13.m_input_center.m_margin_right = 2.;
    model13.m_input_center.m_limitInputNum = 20;

    model13.m_title_numRight = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFang-SC-Regular" size:14] color:CWUBDefineCreate_ColorRGB(0xCCCCCC)];
    model13.m_title_numRight.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;
    model13.m_title_numRight.m_margin_bottom = 1.;
    model13.m_title_numRight.m_text = [NSString stringWithFormat:@"0/%d",model13.m_input_center.m_limitInputNum];
    model13.m_title_numRight.m_numberOfLines = 1;

    model13.m_bottomLineInfo.m_color = CWUBDefineCreate_ColorRGB(0xE8E8E8);
    model13.m_bottomLineInfo.m_margin_right = 1;
    [data addObject:model13];

    return model13;
}
@end
