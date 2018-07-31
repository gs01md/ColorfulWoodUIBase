//
//  CWUBCell_Order_One_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/25.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Order_One_Model.h"

@implementation CWUBCell_Order_One_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Order_One;
    }

    return self;
}

- (CWUBTextInfo*)m_title_one{

    if (!_m_title_one) {
        _m_title_one = [CWUBTextInfo new];
        _m_title_one.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_one;
}

- (CWUBTextInfo*)m_title_two{

    if (!_m_title_two) {
        _m_title_two = [CWUBTextInfo new];
        _m_title_two.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_two;
}

- (CWUBTextInfo*)m_title_three{

    if (!_m_title_three) {
        _m_title_three = [CWUBTextInfo new];
        _m_title_three.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_three;
}

- (CWUBTextInfo*)m_title_four{

    if (!_m_title_four) {
        _m_title_four = [CWUBTextInfo new];
        _m_title_four.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_four;
}

- (CWUBTextInfo*)m_title_five{

    if (!_m_title_five) {
        _m_title_five = [CWUBTextInfo new];
        _m_title_five.m_color_backGroud = [UIColor colorWithHexString:@"#cccccc" alpha:1];
    }
    return _m_title_five;
}

+ (CWUBCell_Order_One_Model*)tester_data{

    CWUBCell_Order_One_Model *model = [CWUBCell_Order_One_Model new];
    model.m_type = CWUBCellType_Order_One;
    model.m_bottomLineInfo.m_color = [UIColor blueColor];

    model.m_title_one  = [[CWUBTextInfo alloc] initWithText:@"2018-1-2 12:20:30" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model.m_title_two = [[CWUBTextInfo alloc] initWithText:@"订单号：1DDADF2E232D2WE24" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model.m_title_three = [[CWUBTextInfo alloc] initWithText:@"软文推广" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];

    model.m_title_four = [[CWUBTextInfo alloc] initWithText:@"已接单" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];

    model.m_title_five = [[CWUBTextInfo alloc] initWithText:@"实付款：￥400" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
    model.m_title_five.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;

    return model;
}

+ (CWUBCell_Order_One_Model*)tester_dataWithArray:(NSMutableArray*)array{

    CWUBCell_Order_One_Model *model = [CWUBCell_Order_One_Model new];
    model.m_type = CWUBCellType_Order_One;
    model.m_bottomLineInfo.m_color = [UIColor blueColor];

    model.m_title_one  = [[CWUBTextInfo alloc] initWithText:@"2018-1-2 12:20:30" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model.m_title_two = [[CWUBTextInfo alloc] initWithText:@"订单号：1DDADF2E232D2WE24" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model.m_title_three = [[CWUBTextInfo alloc] initWithText:@"软文推广" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];

    model.m_title_four = [[CWUBTextInfo alloc] initWithText:@"已接单" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];

    model.m_title_five = [[CWUBTextInfo alloc] initWithText:@"实付款：￥400" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
    model.m_title_five.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_right;

    if (array) {
        [array addObject:model];
    }
    
    return model;
}

@end
