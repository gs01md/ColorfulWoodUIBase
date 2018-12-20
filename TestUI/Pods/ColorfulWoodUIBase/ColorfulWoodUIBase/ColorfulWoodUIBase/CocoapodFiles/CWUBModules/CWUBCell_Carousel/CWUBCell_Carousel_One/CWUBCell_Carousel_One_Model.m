//
//  CWUBCell_Carousel_One_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/29.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Carousel_One_Model.h"
#import "CWUBCell_Carousel_Single_Model.h"

@implementation CWUBCell_Carousel_One_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Carousel_One;
    }

    return self;
}

- (CWUBImageInfo*) m_img_left{

    if (!_m_img_left) {
        _m_img_left = [CWUBImageInfo new];
    }

    return _m_img_left;
}

- (float) m_height{

    if (_m_height<1) {
        _m_height = 45.;
    }

    return _m_height;
}

- (float) m_stayTime{

    if (_m_stayTime<1) {
        _m_stayTime = 2.;
    }

    return _m_stayTime;
}

+ (CWUBCell_Carousel_One_Model*)tester_data{

    CWUBCell_Carousel_One_Model *model = [CWUBCell_Carousel_One_Model new];
    model.m_type = CWUBCellType_Carousel_One;
    model.m_bottomLineInfo.m_color = [UIColor blueColor];

    CWUBCell_Carousel_Single_Model *single = [CWUBCell_Carousel_Single_Model new];
    CWUBTextInfo *info = [[CWUBTextInfo alloc] initWithText:@"北京CSDR公司" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    CWUBTextInfo *info1 = [[CWUBTextInfo alloc] initWithText:@"智能识别系统" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    CWUBTextInfo *info2 = [[CWUBTextInfo alloc] initWithText:@"购买成功" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
    info.m_margin_left = 5.;
    info1.m_margin_left = 5.;
    info2.m_margin_left = 5.;
    CWUBImageInfo *img = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];
    img.m_margin_left = 20.;
    [single.m_array addObject:img];
    [single.m_array addObject:info];
    [single.m_array addObject:info1];
    [single.m_array addObject:info2];

    [model.m_array addObject:single];
    [model.m_array addObject:single];
    [model.m_array addObject:single];

    return model;
}

+ (CWUBCell_Carousel_One_Model*)tester_dataWithArray:(NSMutableArray*) array{

    CWUBCell_Carousel_One_Model *model = [CWUBCell_Carousel_One_Model new];
    model.m_type = CWUBCellType_Carousel_One;
    model.m_color_backGround = [UIColor blueColor];
    model.m_bottomLineInfo.m_color = [UIColor blueColor];
    model.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:25 height:25];
    model.m_img_left.m_margin_right = 1.;

    CWUBCell_Carousel_Single_Model *single = [CWUBCell_Carousel_Single_Model new];
    CWUBTextInfo *info = [[CWUBTextInfo alloc] initWithText:@"北京CSDR公司" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    CWUBTextInfo *info1 = [[CWUBTextInfo alloc] initWithText:@"智能识别系统" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    CWUBTextInfo *info2 = [[CWUBTextInfo alloc] initWithText:@"购买成功" font:[CWUBDefine fontOptButton] color:[UIColor blueColor]];
    info.m_margin_left = 5.;
    info1.m_margin_left = 5.;
    info2.m_margin_left = 5.;

    [single.m_array addObject:info];
    [single.m_array addObject:info1];
    [single.m_array addObject:info2];


    CWUBCell_Carousel_Single_Model *single2 = [CWUBCell_Carousel_Single_Model new];
    single2.m_color_backGround = [UIColor blueColor];
    [single2.m_array addObject:info];
    [single2.m_array addObject:info2];

    CWUBCell_Carousel_Single_Model *single3 = [CWUBCell_Carousel_Single_Model new];
    single3.m_color_backGround = [UIColor redColor];
    [single3.m_array addObject:info];
    [single3.m_array addObject:info1];

    [model.m_array addObject:single];
    [model.m_array addObject:single2];
    [model.m_array addObject:single3];

    model.m_event_opt_code = @"滚动轮播";
    model.m_stayTime = 3.;
    [array addObject:model];

    return model;
}
@end
