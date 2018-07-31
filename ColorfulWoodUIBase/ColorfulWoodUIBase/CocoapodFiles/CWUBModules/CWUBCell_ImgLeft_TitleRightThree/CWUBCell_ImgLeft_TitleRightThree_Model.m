//
//  CWUBCell_ImgLeft_TitleRightThree_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgLeft_TitleRightThree_Model.h"

@implementation CWUBCell_ImgLeft_TitleRightThree_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_ImgLeft_TitleRightThree;
    }

    return self;
}

- (CWUBImageInfo*) m_back{

    if (!_m_back) {
        _m_back = [CWUBImageInfo new];
    }

    return _m_back;
}

- (CWUBImageInfo*) m_img_left{

    if (!_m_img_left) {
        _m_img_left = [CWUBImageInfo new];
    }

    return _m_img_left;
}

- (CWUBTextInfo*) m_title_rightTop{

    if (!_m_title_rightTop) {
        _m_title_rightTop = [CWUBTextInfo new];
    }

    return _m_title_rightTop;
}

- (CWUBTextInfo*) m_title_rightCenter{

    if (!_m_title_rightCenter) {
        _m_title_rightCenter = [CWUBTextInfo new];
    }

    return _m_title_rightCenter;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}

+ (CWUBCell_ImgLeft_TitleRightThree_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgLeft_TitleRightThree_Model * model5 = [CWUBCell_ImgLeft_TitleRightThree_Model new];
    model5.m_type = CWUBCellType_ImgLeft_TitleRightThree;
    model5.m_img_left = [[CWUBImageInfo alloc] initWithName:@"FSL_M_我的个人头像" width:60. height:60.];
    model5.m_img_left.m_isCircle = YES;
    model5.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:26.2] color:[UIColor blackColor]];
    model5.m_title_rightCenter = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_back.m_color_background = [UIColor whiteColor];

    [data addObject:model5];

    return model5;
}

+ (CWUBCell_ImgLeft_TitleRightThree_Model *)tester_dataWithArray2:(NSMutableArray *)data{

    CWUBCell_ImgLeft_TitleRightThree_Model * model5 = [CWUBCell_ImgLeft_TitleRightThree_Model new];
    model5.m_type = CWUBCellType_ImgLeft_TitleRightThree;
    model5.m_bottomLineInfo.m_color = [UIColor blueColor];
    model5.m_img_left = [[CWUBImageInfo alloc] initWithName:@"back" width:90. height:90.];
    model5.m_img_left.m_isCircle = YES;
    model5.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_rightCenter = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

    [data addObject:model5];

    return model5;
}
@end
