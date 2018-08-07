//
//  CWUBCell_TitleLeft_InfoLeft_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_InfoLeft_Model.h"
#import "CWUBDefine.h"

@implementation CWUBCell_TitleLeft_InfoLeft_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeft_InfoLeft;
    }

    return self;
}

- (float)m_titleWidth{

    if(!_m_titleWidth){
        _m_titleWidth = 0.1;

    }
    return _m_titleWidth;
}

+ (CWUBModelBase *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_InfoLeft_Model *model1 = [CWUBCell_TitleLeft_InfoLeft_Model new];
    NSString * price = @"200.00";

    //使格式符合要求
    if (price && price.length>0) {

        if (![price containsString:@"￥"]) {
            price = [NSString stringWithFormat:@"￥%@",price];
        }
        if (![price containsString:@"."]) {
            price = [NSString stringWithFormat:@"%@.00",price];
        }

    }else{
        price = @"￥0.00";
    }

    NSString * unit = [NSString stringWithFormat:@"/%@",@"篇"];

    price = [NSString stringWithFormat:@"%@%@",price,unit];

    CWUBAttributedTextInfo *title = [[CWUBAttributedTextInfo alloc] initWithText:price];

    /**
     * 从 . 位置区分字体
     */
    NSRange point = [price rangeOfString:@"."];

    [title interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(0, 1)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_Color(222, 67, 64, 1)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFangSC-Light" size:13.]],nil],nil
     ];

    [title interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(1, point.location+1)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_Color(222, 67, 64, 1)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFangSC-Medium" size:18.]],nil],nil
     ];

    [title interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(point.location+1, price.length-point.location-1-unit.length)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_Color(222, 67, 64, 1)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFangSC-Light" size:15.]],nil],nil
     ];

    [title interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                initWithRange:NSMakeRange(point.location+1 + (price.length-point.location-1-unit.length), unit.length)
                                attributes:[CWUBAttributedSingleAttribute
                                            createWithName:NSForegroundColorAttributeName
                                            value:CWUBDefineCreate_Color(222, 67, 64, 1)],
                                [CWUBAttributedSingleAttribute
                                 createWithName:NSFontAttributeName
                                 value:[UIFont fontWithName:@"PingFangSC-Medium" size:13.]],nil],nil
     ];

    model1.m_title = title;
    model1.m_title.m_margin_left = 10;
    model1.m_title.m_margin_top = 0.1;

    model1.m_info = [[CWUBTextInfo alloc] initWithText:@"线下服务" font:[UIFont fontWithName:@"PingFangSC-Regular" size:12] color:CWUBDefineCreate_Color(118, 111, 255, 1)];
    model1.m_info.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_left;
    model1.m_info.m_margin_top = 7;
    model1.m_info.m_margin_left = 15.;

    [data addObject:model1];

    return model1;
}

/**
 * 只显示标题
 */
+ (CWUBModelBase *)tester_dataWithArray2:(NSMutableArray *)data {

    CWUBCell_TitleLeft_InfoLeft_Model *model3 = [CWUBCell_TitleLeft_InfoLeft_Model new];

    NSString *content = @"只显示标题只显示标题只显示标题只显示标题只显示标题只显示标题只显示标题只显示标题只显示标题只显示标题只显示标题";

    model3.m_title = [[CWUBTextInfo alloc] initWithText:content font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(102, 102, 102, 1)];
    model3.m_info = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(102, 102, 102, 1)];
    model3.m_info.m_width = 1.1;
    model3.m_title.m_margin_top = 6;
    model3.m_title.m_margin_left = 10;
    model3.m_bottomLineInfo.m_height = 10.;
    model3.m_bottomLineInfo.m_margin_left = 1.;
    model3.m_bottomLineInfo.m_margin_right = 1.;
    model3.m_bottomLineInfo.m_color = CWUBDefineCreate_Color(243, 243, 243, 1);

    [data addObject:model3];

    return model3;
}
@end
