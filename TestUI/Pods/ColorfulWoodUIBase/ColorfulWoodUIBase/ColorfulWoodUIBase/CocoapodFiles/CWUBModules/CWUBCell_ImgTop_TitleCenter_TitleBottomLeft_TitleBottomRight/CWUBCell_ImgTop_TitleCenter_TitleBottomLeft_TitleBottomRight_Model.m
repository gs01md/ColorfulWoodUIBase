//
//  CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model.h"

@implementation CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight;
    }

    return self;
}

- (CWUBImageInfo*) m_img_top{

    if (!_m_img_top) {
        _m_img_top = [CWUBImageInfo new];
    }

    return _m_img_top;
}

- (CWUBTextInfo*) m_title_center{

    if (!_m_title_center) {
        _m_title_center = [CWUBTextInfo new];
    }

    return _m_title_center;
}

- (CWUBTextInfo*) m_title_bottom_left{

    if (!_m_title_bottom_left) {
        _m_title_bottom_left = [CWUBTextInfo new];
    }

    return _m_title_bottom_left;
}

- (CWUBTextInfo*) m_title_bottom_right{

    if (!_m_title_bottom_right) {
        _m_title_bottom_right = [CWUBTextInfo new];
    }

    return _m_title_bottom_right;
}

+ (CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model * model4 = [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model new];
    model4.m_type = CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight;
    model4.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_bottom_left = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_bottom_right = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_bottomLineInfo.m_color = [UIColor blueColor];
    model4.m_img_top = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];

    [data addObject:model4];

    return model4;
}
@end
