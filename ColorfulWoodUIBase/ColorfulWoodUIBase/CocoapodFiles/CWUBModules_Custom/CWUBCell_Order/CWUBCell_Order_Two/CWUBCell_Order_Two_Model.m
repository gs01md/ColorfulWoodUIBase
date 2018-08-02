//
//  CWUBCell_Order_Two_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/8/2.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Order_Two_Model.h"

@implementation CWUBCell_Order_Two_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Order_Two;
    }

    return self;
}

+ (CWUBCell_Order_Two_Model*)tester_dataWithArray:(NSMutableArray*)array{

    CWUBCell_Order_Two_Model *model = [CWUBCell_Order_Two_Model new];

    model.m_img_one = [[CWUBImageInfo alloc] initWithName:@"left" width:35 height:35];
    model.m_img_one.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:1. width:1 color:CWUBDefineCreate_Color(233, 233, 233, 1)];
    model.m_img_one.m_margin_left = 10.;
    model.m_img_one.m_margin_top = 10.;

    model.m_title_one  = [[CWUBTextInfo alloc] initWithText:@"商讯撰写" font:[UIFont fontWithName:@"PingFangSC-Medium" size:15] color:CWUBDefineCreate_Color(51, 51, 51, 1)];
    model.m_title_two = [[CWUBTextInfo alloc] initWithText:@"订单号：SDS111231312313" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(51, 51, 51, 1)];
    model.m_title_three  = [[CWUBTextInfo alloc] initWithText:@"下单时间：2018-07-01" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(51, 51, 51, 1)];
    model.m_title_three.m_margin_top = 5.;


    NSString * price = @"￥400.00";

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

    price = [NSString stringWithFormat:@"实付款：%@", price];

    model.m_title_four = [[CWUBAttributedTextInfo alloc] initWithText:price];
    model.m_title_four.m_margin_top = 16.;

    /**
     * 从 . 位置区分字体
     */
    NSRange point = [price rangeOfString:@"."];

    [model.m_title_four interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                              initWithRange:NSMakeRange(0, 5)
                                              attributes:[CWUBAttributedSingleAttribute
                                                          createWithName:NSForegroundColorAttributeName
                                                          value:CWUBDefineCreate_Color(51, 51, 51, 1)],
                                              [CWUBAttributedSingleAttribute
                                               createWithName:NSFontAttributeName
                                               value:[UIFont fontWithName:@"PingFangSC-Regular" size:13.]],nil],nil
     ];

    [model.m_title_four interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                              initWithRange:NSMakeRange(5, point.location+1 - 5)
                                              attributes:[CWUBAttributedSingleAttribute
                                                          createWithName:NSForegroundColorAttributeName
                                                          value:CWUBDefineCreate_Color(51, 51, 51, 1)],
                                              [CWUBAttributedSingleAttribute
                                               createWithName:NSFontAttributeName
                                               value:[UIFont fontWithName:@"PingFangSC-Medium" size:13.]],nil],nil
     ];

    [model.m_title_four interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                              initWithRange:NSMakeRange(point.location+1, price.length-point.location-1)
                                              attributes:[CWUBAttributedSingleAttribute
                                                          createWithName:NSForegroundColorAttributeName
                                                          value:CWUBDefineCreate_Color(51, 51, 51, 1)],
                                              [CWUBAttributedSingleAttribute
                                               createWithName:NSFontAttributeName
                                               value:[UIFont fontWithName:@"PingFangSC-Regular" size:13.]],nil],nil
     ];


    model.m_title_five = [[CWUBTextInfo alloc] initWithText:@"线下服务" font:[UIFont fontWithName:@"PingFangSC-Regular" size:12] color:CWUBDefineCreate_Color(153, 153, 153, 1)];
    model.m_title_six = [[CWUBTextInfo alloc] initWithText:@"已接单" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(102, 169, 255, 1)];

    /**
     * 分割线
     */
    model.m_bottomLineInfo.m_color = CWUBDefineCreate_Color(233, 235, 239, 1);
    model.m_bottomLineInfo.m_height = 5.;
    model.m_bottomLineInfo.m_margin_left = 0.01;
    model.m_bottomLineInfo.m_margin_right = 0.01;

    if (array) {
        [array addObject:model];
    }

    return model;
}

#pragma mark - 属性

- (CWUBTextInfo*)m_title_one{

    if (!_m_title_one) {
        _m_title_one = [CWUBTextInfo new];
    }
    return _m_title_one;
}

- (CWUBTextInfo*)m_title_two{

    if (!_m_title_two) {
        _m_title_two = [CWUBTextInfo new];    }
    return _m_title_two;
}

- (CWUBTextInfo*)m_title_three{

    if (!_m_title_three) {
        _m_title_three = [CWUBTextInfo new];
    }
    return _m_title_three;
}

- (CWUBAttributedTextInfo*)m_title_four{

    if (!_m_title_four) {
        _m_title_four = [CWUBAttributedTextInfo new];
    }
    return _m_title_four;
}

- (CWUBTextInfo*)m_title_five{

    if (!_m_title_five) {
        _m_title_five = [CWUBTextInfo new];
    }
    return _m_title_five;
}

- (CWUBTextInfo*)m_title_six{

    if (!_m_title_six) {
        _m_title_six = [CWUBTextInfo new];
    }
    return _m_title_six;
}

- (CWUBImageInfo*) m_img_one{

    if (!_m_img_one) {
        _m_img_one = [CWUBImageInfo new];
    }

    return _m_img_one;
}
@end
