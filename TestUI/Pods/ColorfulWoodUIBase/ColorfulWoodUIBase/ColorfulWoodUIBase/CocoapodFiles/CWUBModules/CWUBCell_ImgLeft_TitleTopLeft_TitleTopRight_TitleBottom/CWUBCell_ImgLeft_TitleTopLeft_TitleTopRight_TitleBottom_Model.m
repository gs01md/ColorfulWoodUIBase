//
//  CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model.h"

@implementation CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom;
    }

    return self;
}

- (CWUBImageInfo*) m_img_left{

    if (!_m_img_left) {
        _m_img_left = [CWUBImageInfo new];
    }

    return _m_img_left;
}

- (CWUBTextInfo*) m_title_rightTopLeft{

    if (!_m_title_rightTopLeft) {
        _m_title_rightTopLeft = [CWUBTextInfo new];
    }

    return _m_title_rightTopLeft;
}

- (CWUBTextInfo*) m_title_rightTopRight{

    if (!_m_title_rightTopRight) {
        _m_title_rightTopRight = [CWUBTextInfo new];
    }

    return _m_title_rightTopRight;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}

+ (CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model * model28 = [CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model new];
    model28.m_type = CWUBCellType_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom;
    model28.m_img_left = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:75. height:75.];
    model28.m_img_left.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model28.m_img_left.m_defaultName = @"left";
    model28.m_img_left.m_margin_top = 40.;
    model28.m_img_left.m_margin_bottom = 40.;
    model28.m_title_rightTopLeft = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:22] color:CWUBDefineCreate_Color(39,39,39,1)];
    model28.m_title_rightTopRight = [[CWUBTextInfo alloc] initWithText:[NSString stringWithFormat:@" %@ ", @"职位"] font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(51,51,51,1)];
    model28.m_title_rightTopRight.m_numberOfLines = 1;
    model28.m_title_rightTopRight.m_margin_top = 10;
    model28.m_title_rightTopRight.m_margin_bottom = 10;
    model28.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model28.m_title_rightBottom.m_numberOfLines = 1;
    model28.m_title_rightBottom.m_margin_CenterY = 20.;
    model28.m_title_rightTopLeft.m_margin_CenterY = -15.;
    model28.m_bottomLineInfo.m_height = 10.;
    model28.m_bottomLineInfo.m_color = CWUBDefineCreate_Color(51,51,51,1);
    model28.m_bottomLineInfo.m_margin_right = 0.1;
    model28.m_bottomLineInfo.m_margin_left = 0.1;

    [data addObject:model28];

    return model28;
}
@end
