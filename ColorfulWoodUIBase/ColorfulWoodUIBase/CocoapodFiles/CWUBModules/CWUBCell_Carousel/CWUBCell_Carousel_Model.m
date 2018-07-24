//
//  CWUBCell_Carousel_Model.m
//  ColorfulWoodUIBase
//  图片 文字 轮播
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Carousel_Model.h"
#import "CWUBCell_Carousel_Single_Model.h"

@implementation CWUBCell_Carousel_Model

- (NSMutableArray *) m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray new];
    }

    return _m_array;
}

- (float) m_fSecond{

    if (_m_fSecond<=0) {
        _m_fSecond = 4.;
    }

    return _m_fSecond;
}

+ (CWUBCell_Carousel_Model*)tester_data{

    CWUBCell_Carousel_Model *model = [CWUBCell_Carousel_Model new];
    model.m_type = CWUBCellType_Carousel;
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

@end

