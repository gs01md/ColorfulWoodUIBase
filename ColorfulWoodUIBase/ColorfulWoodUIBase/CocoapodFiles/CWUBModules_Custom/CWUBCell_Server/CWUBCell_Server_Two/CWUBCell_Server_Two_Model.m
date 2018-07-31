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
    model.m_title_three = [[CWUBTextInfo alloc] initWithText:@"￥400" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
    model.m_img_one = [[CWUBImageInfo alloc] initWithName:@"left" width:50 height:50];

    return model;
}
@end
