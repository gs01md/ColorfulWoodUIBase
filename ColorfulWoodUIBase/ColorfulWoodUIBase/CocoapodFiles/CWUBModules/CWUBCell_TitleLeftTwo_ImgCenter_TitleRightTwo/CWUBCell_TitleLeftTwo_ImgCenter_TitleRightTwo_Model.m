//
//  CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model.h"

@implementation CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo;
    }

    return self;
}

- (CWUBImageInfo*) m_back{

    if (!_m_back) {
        _m_back = [CWUBImageInfo new];
    }

    return _m_back;
}

- (CWUBTextInfo*) m_title_leftTop{

    if (!_m_title_leftTop) {
        _m_title_leftTop = [CWUBTextInfo new];
    }

    return _m_title_leftTop;
}

- (CWUBTextInfo*) m_title_leftBottom{

    if (!_m_title_leftBottom) {
        _m_title_leftBottom = [CWUBTextInfo new];
    }

    return _m_title_leftBottom;
}

- (CWUBImageInfo*) m_img_center{

    if (!_m_img_center) {
        _m_img_center = [CWUBImageInfo new];
    }

    return _m_img_center;
}

- (CWUBTextInfo*) m_title_rightTop{

    if (!_m_title_rightTop) {
        _m_title_rightTop = [CWUBTextInfo new];
    }

    return _m_title_rightTop;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}

+ (CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model * model4 = [CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model new];
    model4.m_type = CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo;
    model4.m_title_leftTop = [[CWUBTextInfo alloc] initWithText:@"1" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_leftBottom = [[CWUBTextInfo alloc] initWithText:@"信息" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"0" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

    float fMargin = 1.;
    model4.m_title_rightTop.m_margin_bottom = fMargin;
    model4.m_title_rightBottom.m_margin_top = fMargin;
    model4.m_title_leftTop.m_margin_bottom = fMargin;
    model4.m_title_leftBottom.m_margin_top = fMargin;
    model4.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"提醒" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_bottomLineInfo.m_color = [UIColor blueColor];
    model4.m_img_center = [[CWUBImageInfo alloc] initWithName:@"sep" width:1. height:10.];

    [data addObject:model4];

    return model4;
}
@end
