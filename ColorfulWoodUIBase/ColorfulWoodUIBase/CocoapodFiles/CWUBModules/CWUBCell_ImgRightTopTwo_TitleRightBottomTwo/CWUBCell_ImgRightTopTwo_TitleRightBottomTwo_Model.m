//
//  CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/7/13.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model.h"

@implementation CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_typeName = @"CWUBCell_ImgRightTopTwo_TitleRightBottomTwo";
    }

    return self;
}

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

- (CWUBTextInfo*) m_title_right2{

    if (!_m_title_right2) {
        _m_title_right2 = [CWUBTextInfo new];
    }

    return _m_title_right2;
}

- (CWUBImageInfo*) m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageInfo new];
    }

    return _m_img_right;
}

- (CWUBImageInfo*) m_img_right2{

    if (!_m_img_right2) {
        _m_img_right2 = [CWUBImageInfo new];
    }

    return _m_img_right2;
}

- (CWUBImageInfo*) m_img_rightLogo{

    if (!_m_img_rightLogo) {
        _m_img_rightLogo = [CWUBImageInfo new];
    }

    return _m_img_rightLogo;
}

- (CWUBImageInfo*) m_img_rightLogo2{

    if (!_m_img_rightLogo2) {
        _m_img_rightLogo2 = [CWUBImageInfo new];
    }

    return _m_img_rightLogo2;
}


+(CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model * model13 = [CWUBCell_ImgRightTopTwo_TitleRightBottomTwo_Model new];

    model13.m_title_right = [[CWUBTextInfo alloc] initWithText:@"确认订单" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:11] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];;
    model13.m_title_right.m_height = CWUBDefine_Width(23);
    model13.m_title_right.m_width = CWUBDefine_Width(66);
    model13.m_title_right.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model13.m_title_right.m_color_backGround = CWUBDefineCreate_ColorRGB(0xFF6634);
    model13.m_title_right.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0xFF6634)];
    model13.m_title_right.m_event_opt_code = @"确认订单";

    model13.m_title_right2 = [[CWUBTextInfo alloc] initWithText:@"驳回订单" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:11] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];;
    model13.m_title_right2.m_height = CWUBDefine_Width(23);
    model13.m_title_right2.m_width = CWUBDefine_Width(66);
    model13.m_title_right2.m_color_backGround = CWUBDefineCreate_ColorRGB(0x86ADFB);
    model13.m_title_right2.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model13.m_title_right2.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0x86ADFB)];
    model13.m_title_right2.m_event_opt_code = @"驳回订单";

    model13.m_img_right = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:75. height:75.];
    model13.m_img_right.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model13.m_img_right.m_defaultName = @"left";
    model13.m_img_right.m_event_opt_code = @"视频点击";
    model13.m_img_right.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:5. width:0.5 color:[UIColor whiteColor]];
    model13.m_img_right.m_width = 78.;
    model13.m_img_right.m_height = 78.;

    model13.m_img_right2 = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:78. height:78.];
    model13.m_img_right2.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model13.m_img_right2.m_defaultName = @"left";
    model13.m_img_right2.m_event_opt_code = @"视频点击";
    model13.m_img_right2.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:5. width:0.5 color:[UIColor whiteColor]];
    model13.m_img_right2.m_width = 78.;
    model13.m_img_right2.m_height = 78.;


    model13.m_img_rightLogo = [[CWUBImageInfo alloc] initWithName:@"upload" width:75. height:75.];
    model13.m_img_rightLogo.m_width = 33;
    model13.m_img_rightLogo.m_height = 33;
    model13.m_img_rightLogo.m_canUserInteract = @"0";

    model13.m_img_rightLogo2 = [[CWUBImageInfo alloc] initWithName:@"upload" width:75. height:75.];
    model13.m_img_rightLogo2.m_width = 33;
    model13.m_img_rightLogo2.m_height = 33;
    model13.m_img_rightLogo2.m_canUserInteract = @"0";
    
    model13.m_bottomLineInfo.m_color = CWUBDefineCreate_ColorRGB(0xF8F8F8);
    model13.m_bottomLineInfo.m_height = 5;
    model13.m_bottomLineInfo.m_margin_left = 1.;
    model13.m_bottomLineInfo.m_margin_right = 1;
    [data addObject:model13];

    return model13;
}

@end
