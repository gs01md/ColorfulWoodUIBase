//
//  CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/11/23.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model.h"

@implementation CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleTopLeft_TitleBottomLeft_TitleBottomFollow;
    }

    return self;
}

- (CWUBTextInfo*) m_title_topLeft{

    if (!_m_title_topLeft) {
        _m_title_topLeft = [CWUBTextInfo new];
    }

    return _m_title_topLeft;
}

- (CWUBTextInfo*) m_title_bottomLeft{

    if (!_m_title_bottomLeft) {
        _m_title_bottomLeft = [CWUBTextInfo new];
    }

    return _m_title_bottomLeft;
}

- (CWUBTextInfo*) m_title_bottomFollow{

    if (!_m_title_bottomFollow) {
        _m_title_bottomFollow = [CWUBTextInfo new];
    }

    return _m_title_bottomFollow;
}

+(CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model * model13 = [CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model new];

    model13.m_img_backGround = [CWUBImageInfo new];
    model13.m_img_backGround.m_color_backGround = CWUBDefineCreate_Color(255, 184, 83, 0.2);
    model13.m_img_backGround.m_margin_left = 25;
    model13.m_img_backGround.m_margin_right = 25;
    model13.m_img_backGround.m_margin_top = 2.;
    model13.m_img_backGround.m_margin_bottom = 2.;
    model13.m_img_backGround.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:8. width:0.5 color:CWUBDefineCreate_ColorRGB(0xFFB853)];
    model13.m_title_topLeft = [[CWUBTextInfo alloc] initWithText:@"致力于打造一家让普通消费消费者" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:15] color:CWUBDefineCreate_ColorRGB(0x212121)];
    model13.m_title_topLeft.m_numberOfLines = 1.;
    model13.m_title_topLeft.m_margin_left = 43;
    model13.m_title_topLeft.m_margin_right = 43;
    model13.m_title_topLeft.m_margin_bottom = 0;
    model13.m_title_bottomLeft = [[CWUBTextInfo alloc] initWithText:@"2017-7-7 19:22" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:12] color:CWUBDefineCreate_ColorRGB(0x999999)];
    model13.m_title_bottomLeft.m_margin_top = 1;
    model13.m_title_bottomFollow = [[CWUBTextInfo alloc] initWithText:@"上架中" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:8] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];
    model13.m_title_bottomFollow.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model13.m_title_bottomFollow.m_height = 15;
    model13.m_title_bottomFollow.m_width = 38;
    model13.m_title_bottomFollow.m_color_backGround = CWUBDefineCreate_ColorRGB(0xFB605D);
    model13.m_title_bottomFollow.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:3. width:0.5 color:CWUBDefineCreate_ColorRGB(0xFB605D)];


    [data addObject:model13];

    return model13;
}

+(CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model *)tester_dataWithArray1:(NSMutableArray *)data{

    CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model * model13 = [CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model new];

    model13.m_img_backGround = [CWUBImageInfo new];
    model13.m_img_backGround.m_color_backGround = [UIColor whiteColor];
    model13.m_img_backGround.m_margin_left = 25;
    model13.m_img_backGround.m_margin_right = 25;
    model13.m_img_backGround.m_margin_top = 2.;
    model13.m_img_backGround.m_margin_bottom = 2.;
    model13.m_img_backGround.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:8. width:0.5 color:CWUBDefineCreate_Color(222, 222, 222, 1)];
    model13.m_title_topLeft = [[CWUBTextInfo alloc] initWithText:@"致力于打造一家让普通消费消费者" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:15] color:CWUBDefineCreate_ColorRGB(0x212121)];
    model13.m_title_topLeft.m_numberOfLines = 1.;
    model13.m_title_topLeft.m_margin_left = 43;
    model13.m_title_topLeft.m_margin_right = 43;
    model13.m_title_topLeft.m_margin_bottom = 0;
    model13.m_title_bottomLeft = [[CWUBTextInfo alloc] initWithText:@"2017-7-7 19:22" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:12] color:CWUBDefineCreate_ColorRGB(0x999999)];
    model13.m_title_bottomLeft.m_margin_top = 1;
    model13.m_title_bottomFollow = [[CWUBTextInfo alloc] initWithText:@"已下架" font:[UIFont fontWithName:@"PingFang-SC-Medium" size:8] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];
    model13.m_title_bottomFollow.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model13.m_title_bottomFollow.m_height = 15;
    model13.m_title_bottomFollow.m_width = 38;
    model13.m_title_bottomFollow.m_color_backGround = CWUBDefineCreate_Color(222, 222, 222, 1);
    model13.m_title_bottomFollow.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:3. width:0.5 color:CWUBDefineCreate_Color(222, 222, 222, 1)];


    [data addObject:model13];

    return model13;
}
@end
