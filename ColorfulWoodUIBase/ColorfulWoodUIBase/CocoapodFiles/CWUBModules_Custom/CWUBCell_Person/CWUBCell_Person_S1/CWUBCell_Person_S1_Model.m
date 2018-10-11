//
//  CWUBCell_Person_S1_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Person_S1_Model.h"

@implementation CWUBCell_Person_S1_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Person_S1;
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

- (CWUBImageInfo*) _m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageInfo new];
    }

    return _m_img_right;
}


+ (CWUBCell_Person_S1_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_Person_S1_Model * model6 = [CWUBCell_Person_S1_Model new];
    model6.m_img_left = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:70. height:70.];
    model6.m_img_left.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model6.m_img_left.m_defaultName = @"left";
    model6.m_img_left.m_margin_top = 40.;
    model6.m_img_left.m_margin_bottom = 40.;
    model6.m_img_left.m_isCircle = YES;
    model6.m_title_rightTopLeft = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Medium" size:20] color:CWUBDefineCreate_Color(26,26,26,1)];
    model6.m_title_rightTopRight = [[CWUBTextInfo alloc] initWithText:[NSString stringWithFormat:@"%@", @"职位"] font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(68,68,68,1)];
    model6.m_title_rightTopRight.m_numberOfLines = 1;
    model6.m_title_rightTopRight.m_margin_top = 10;
    model6.m_title_rightTopRight.m_margin_bottom = 10;
    /**
     * 边框
     */
    //model6.m_title_rightTopRight.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(68,68,68,1)];
    model6.m_title_rightBottom.m_numberOfLines = 1;
    model6.m_title_rightBottom.m_margin_CenterY = 20.;
    model6.m_title_rightTopLeft.m_margin_CenterY = -15.;
    model6.m_img_right = [[CWUBImageInfo alloc] initWithName:@"edit" width:54. height:26.];
    model6.m_img_right.m_margin_right = 0.01;
//    model6.m_bottomLineInfo.m_margin_right = 0.1;
//    model6.m_bottomLineInfo.m_margin_left = 0.1;

    [data addObject:model6];

    return model6;
}

@end
