//
//  CWUBCell_Server_Two_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/25.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Server_Two_Model.h"

@implementation CWUBCell_Server_Two_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Server_Two;
    }

    return self;
}

- (CWUBTextInfo*)m_title_one{

    if (!_m_title_one) {
        _m_title_one = [CWUBTextInfo new];
        _m_title_one.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_one;
}

- (CWUBTextInfo*)m_title_two{

    if (!_m_title_two) {
        _m_title_two = [CWUBTextInfo new];
        _m_title_two.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_two;
}

- (CWUBAttributedTextInfo*)m_title_three{

    if (!_m_title_three) {
        _m_title_three = [CWUBAttributedTextInfo new];
        _m_title_three.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_three;
}

- (CWUBTextInfo*)m_title_four{

    if (!_m_title_four) {
        _m_title_four = [CWUBTextInfo new];
        _m_title_four.m_color_backGround = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_four;
}



- (CWUBImageInfo*) m_img_one{

    if (!_m_img_one) {
        _m_img_one = [CWUBImageInfo new];
    }

    return _m_img_one;
}

+ (CWUBCell_Server_Two_Model*)tester_data{

    CWUBCell_Server_Two_Model *model = [CWUBCell_Server_Two_Model new];
    model.m_type = CWUBCellType_Server_One;
    model.m_bottomLineInfo.m_color = [UIColor blueColor];

    model.m_title_one  = [[CWUBTextInfo alloc] initWithText:@"商讯撰写" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model.m_title_two = [[CWUBTextInfo alloc] initWithText:@"杂志内刊封面展示" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model.m_title_three = [[CWUBAttributedTextInfo alloc] initWithText:@"￥400" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
    model.m_img_one = [[CWUBImageInfo alloc] initWithName:@"left" width:50 height:50];

    return model;
}

+ (CWUBCell_Server_Two_Model*)tester_dataWithArray:(NSMutableArray*)array{

    CWUBCell_Server_Two_Model *model = [CWUBCell_Server_Two_Model new];

    model.m_bottomLineInfo.m_color = CWUBDefineCreate_Color(233, 235, 239, 1);
    model.m_bottomLineInfo.m_height = 5.;

    model.m_title_one  = [[CWUBTextInfo alloc] initWithText:@"商讯撰写" font:[UIFont fontWithName:@"PingFangSC-Medium" size:15] color:CWUBDefineCreate_Color(51, 51, 51, 1)];
    model.m_title_two = [[CWUBTextInfo alloc] initWithText:@"杂志内刊封面展示杂志内刊封面展示杂志内刊封面展示杂志内刊封面展示杂志内刊封面展示杂志内刊封面展示杂志内刊封面展示杂志内刊封面展示" font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(102, 102, 102, 1)];
    model.m_title_two.m_margin_top = 5.;
    model.m_title_two.m_numberOfLines = 2.;


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

    model.m_title_three = [[CWUBAttributedTextInfo alloc] initWithText:price];

    /**
     * 从 . 位置区分字体
     */
    NSRange point = [price rangeOfString:@"."];

    [model.m_title_three interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                              initWithRange:NSMakeRange(0, 1)
                                              attributes:[CWUBAttributedSingleAttribute
                                                          createWithName:NSForegroundColorAttributeName
                                                          value:CWUBDefineCreate_Color(222, 67, 64, 1)],
                                              [CWUBAttributedSingleAttribute
                                               createWithName:NSFontAttributeName
                                               value:[UIFont fontWithName:@"PingFangSC-Light" size:12.]],nil],nil
     ];

    [model.m_title_three interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                              initWithRange:NSMakeRange(1, point.location+1)
                                              attributes:[CWUBAttributedSingleAttribute
                                                          createWithName:NSForegroundColorAttributeName
                                                          value:CWUBDefineCreate_Color(222, 67, 64, 1)],
                                              [CWUBAttributedSingleAttribute
                                               createWithName:NSFontAttributeName
                                               value:[UIFont fontWithName:@"PingFangSC-Medium" size:15.]],nil],nil
     ];

    [model.m_title_three interface_addSingle:[[CWUBAttributedSingleRange alloc]
                                              initWithRange:NSMakeRange(point.location+1, price.length-point.location-1)
                                              attributes:[CWUBAttributedSingleAttribute
                                                          createWithName:NSForegroundColorAttributeName
                                                          value:CWUBDefineCreate_Color(222, 67, 64, 1)],
                                                         [CWUBAttributedSingleAttribute
                                                          createWithName:NSFontAttributeName
                                                          value:[UIFont fontWithName:@"PingFangSC-Medium" size:12.]],nil],nil
    ];


    model.m_title_four = [[CWUBTextInfo alloc] initWithText:@"线下服务" font:[UIFont fontWithName:@"PingFangSC-Regular" size:12] color:CWUBDefineCreate_Color(118, 111, 255, 1)];
    model.m_img_one = [[CWUBImageInfo alloc] initWithName:@"left" width:95 height:95];
    model.m_img_one.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:1. width:1 color:CWUBDefineCreate_Color(233, 233, 233, 1)];

    if (array) {
        [array addObject:model];
    }

    return model;
}
@end
