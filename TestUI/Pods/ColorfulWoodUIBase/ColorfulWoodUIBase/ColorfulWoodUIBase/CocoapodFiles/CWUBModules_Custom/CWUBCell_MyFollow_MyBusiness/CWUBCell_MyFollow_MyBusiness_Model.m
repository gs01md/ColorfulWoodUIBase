//
//  CWUBCell_MyFollow_MyBusiness_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_MyFollow_MyBusiness_Model.h"

@implementation CWUBCell_MyFollow_MyBusiness_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_MyFollow_MyBusiness;
    }

    return self;
}

- (CWUBTextInfo*) m_title_left_top{

    if (!_m_title_left_top) {
        _m_title_left_top = [CWUBTextInfo new];
    }

    return _m_title_left_top;
}

- (CWUBImageInfo*) m_img_left_bottom{

    if (!_m_img_left_bottom) {
        _m_img_left_bottom = [CWUBImageInfo new];
    }

    return _m_img_left_bottom;
}

- (CWUBTextInfo*) m_title_left_bottom{

    if (!_m_title_left_bottom) {
        _m_title_left_bottom = [CWUBTextInfo new];
    }

    return _m_title_left_bottom;
}

- (CWUBTextInfo*) m_title_right_top{

    if (!_m_title_right_top) {
        _m_title_right_top = [CWUBTextInfo new];
    }

    return _m_title_right_top;
}

- (CWUBImageInfo*) m_img_right_bottom{

    if (!_m_img_right_bottom) {
        _m_img_right_bottom = [CWUBImageInfo new];
    }

    return _m_img_right_bottom;
}

- (CWUBTextInfo*) m_title_right_bottom{

    if (!_m_title_right_bottom) {
        _m_title_right_bottom = [CWUBTextInfo new];
    }

    return _m_title_right_bottom;
}

+ (CWUBCell_MyFollow_MyBusiness_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_MyFollow_MyBusiness_Model *model3 = [CWUBCell_MyFollow_MyBusiness_Model new];
    model3.m_type = CWUBCellType_MyFollow_MyBusiness;
    model3.m_bottomLineInfo.m_color = [UIColor blueColor];
    model3.m_bottomLineInfo.m_margin_left = 20.;
    model3.m_bottomLineInfo.m_margin_right = 20.;
    model3.m_bottomLineInfo.m_height = 10.;

    model3.m_title_left_top = [[CWUBTextInfo alloc] initWithText:@"标题左" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model3.m_title_right_top = [[CWUBTextInfo alloc] initWithText:@"标题右" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model3.m_title_right_top.m_margin_right = 40.;
    model3.m_title_left_top.m_margin_left = 40.;
    model3.m_img_left_bottom = [[CWUBImageInfo alloc] initWithName:@"left" width:15. height:15.];
    model3.m_img_right_bottom = [[CWUBImageInfo alloc] initWithName:@"left" width:15. height:15.];
    model3.m_title_left_bottom = [[CWUBTextInfo alloc] initWithText:@"我的关注我的关注我的关注我的关注我的关注我的关注" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model3.m_title_right_bottom = [[CWUBTextInfo alloc] initWithText:@"你的" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];

    [data addObject:model3];

    return model3;
}
@end
