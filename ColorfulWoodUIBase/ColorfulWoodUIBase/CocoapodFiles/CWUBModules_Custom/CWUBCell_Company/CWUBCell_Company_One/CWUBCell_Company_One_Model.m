//
//  CWUBCell_Company_One_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Company_One_Model.h"

@implementation CWUBCell_Company_One_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Company_One;
    }

    return self;
}

- (CWUBImageInfo*) m_back{

    if (!_m_back) {
        _m_back = [CWUBImageInfo new];
    }

    return _m_back;
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

- (CWUBTextInfo*) m_title_bottomLeft{

    if (!_m_title_bottomLeft) {
        _m_title_bottomLeft = [CWUBTextInfo new];
    }

    return _m_title_bottomLeft;
}

- (CWUBTextInfo*) m_title_bottomCenter{

    if (!_m_title_bottomCenter) {
        _m_title_bottomCenter = [CWUBTextInfo new];
    }

    return _m_title_bottomCenter;
}

- (CWUBImageInfo*) m_img_bottomRight{

    if (!_m_img_bottomRight) {
        _m_img_bottomRight = [CWUBImageInfo new];
    }

    return _m_img_bottomRight;
}


+ (CWUBCell_Company_One_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_Company_One_Model * model7 = [CWUBCell_Company_One_Model new];
    model7.m_type = CWUBCellType_Company_One;
    model7.m_img_top = [[CWUBImageInfo alloc] initWithName:@"left" width:60. height:60.];
    model7.m_img_top.m_defaultName = @"left";
    model7.m_img_top.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model7.m_img_top.m_margin_top = 12.;
    model7.m_img_top.m_margin_bottom = 40.;

    model7.m_img_top.m_isCircle = YES;

    model7.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司公司公司公司公司公司公司公司公司公司公司公司" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:20] color:CWUBDefineCreate_Color(39,39,39,1)];
    model7.m_title_center.m_margin_CenterY = 5.;
    model7.m_title_center.m_margin_bottom = 10.;
    model7.m_title_center.m_numberOfLines = 1;

    model7.m_title_bottomLeft = [[CWUBTextInfo alloc] initWithText:@"HanhanHanhanHanhanHanhanHanhanHanhanHanhanHanhanHanhan" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_bottomLeft.m_numberOfLines = 1;
    //model7.m_title_bottomLeft.m_width_max = 20.;

    model7.m_back = [[CWUBImageInfo alloc] initWithName:@"companyback" width:0. height:0.];
    model7.m_back.m_margin_left = 10.;
    model7.m_back.m_margin_right = 10.;
    model7.m_back.m_color_background = [UIColor whiteColor];

    model7.m_title_bottomCenter = [[CWUBTextInfo alloc] initWithText:@" CEO " font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_bottomCenter.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_img_bottomRight = [[CWUBImageInfo alloc] initWithName:@"button" width:75. height:35.];;

    model7.m_title_bottomCenter.m_numberOfLines = 1;
    model7.m_title_bottomLeft.m_margin_bottom = 35.;
    model7.m_title_bottomLeft.m_margin_top = 10;

    [data addObject:model7];

    return model7;
}

+ (CWUBCell_Company_One_Model *)tester_dataWithArray2:(NSMutableArray *)data{

    CWUBCell_Company_One_Model * model27 = [CWUBCell_Company_One_Model new];
    model27.m_type = CWUBCellType_Company_One;
    model27.m_img_top = [[CWUBImageInfo alloc] initWithName:@"我的首页_LOGO" width:60 height:60];
    model27.m_img_top.m_defaultName = @"我的首页_LOGO";

    model27.m_img_top.m_margin_top = 15;
    model27.m_img_top.m_margin_bottom = 40.;
    model27.m_img_top.m_isCircle = YES;
    model27.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司公司公司公司公司公司公司公司公司公司公司公司公司公司" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:20] color:CWUBDefineCreate_Color(39,39,39,1)];
    model27.m_title_center.m_margin_CenterY = -5.;
    model27.m_title_center.m_margin_bottom = 1.;
    model27.m_title_center.m_numberOfLines = 1;
    model27.m_title_bottomLeft = [[CWUBTextInfo alloc] initWithText:@"联系人联系人联系人联系人联系人联系人联系人联系人联系人联系人" font:[UIFont fontWithName:@"PingFangSC-Regular" size:15] color:CWUBDefineCreate_Color(51,51,51,1)];
    model27.m_title_bottomLeft.m_width_max = 100;
    model27.m_title_bottomLeft.m_margin_right = 10.;
    model27.m_title_bottomLeft.m_numberOfLines = 1;
    model27.m_back = [[CWUBImageInfo alloc] initWithName:@"companyback" width:0. height:0.];
    model27.m_back.m_margin_left = 10.;
    model27.m_back.m_margin_right = 10.;
    model27.m_back.m_margin_top = 30.+10;
    model27.m_back.m_color_background = [UIColor whiteColor];
    model27.m_back.m_height = 140.;
    model27.m_title_bottomCenter = [[CWUBTextInfo alloc] initWithText:[NSString stringWithFormat:@"%@", @"职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位"] font:[UIFont fontWithName:@"PingFangSC-Regular" size:15] color:CWUBDefineCreate_Color(51,51,51,1)];
    model27.m_img_bottomRight = [[CWUBImageInfo alloc] initWithName:@"button" width:75. height:35.];;
    model27.m_title_bottomCenter.m_margin_left = 10.;
    model27.m_title_bottomCenter.m_width_max = 100;
    model27.m_img_bottomRight.m_margin_left = 10.;
    model27.m_title_bottomCenter.m_numberOfLines = 1;
    model27.m_title_bottomLeft.m_margin_bottom = 35.;
    model27.m_title_bottomLeft.m_margin_top = 1;
    [data addObject:model27];

    return model27;
}
@end

