//
//  CWUBCell_TitleLeft_ImgFollow_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/8.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_ImgFollow_Model.h"

@implementation CWUBCell_TitleLeft_ImgFollow_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_typeName = @"CWUBCell_TitleLeft_ImgFollow";
    }

    return self;
}

- (CWUBTextInfo*) m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
    }

    return _m_title_left;
}

- (CWUBImageInfo*) m_img_follow{

    if (!_m_img_follow) {
        _m_img_follow = [CWUBImageInfo new];
    }

    return _m_img_follow;
}

- (CWUBImageInfo*) m_img_followLogo{

    if (!_m_img_followLogo) {
        _m_img_followLogo = [CWUBImageInfo new];
    }

    return _m_img_followLogo;
}

+(CWUBCell_TitleLeft_ImgFollow_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleLeft_ImgFollow_Model * model13 = [CWUBCell_TitleLeft_ImgFollow_Model new];

    model13.m_title_left = [[CWUBTextInfo alloc] initWithText:@"你好" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0x1A1A1A)];
    model13.m_title_left.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_left;
    model13.m_title_left.m_textPlaceholder = @"请输入内容";

    model13.m_img_follow = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:75. height:75.];
    model13.m_img_follow.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model13.m_img_follow.m_defaultName = @"left";
    model13.m_img_follow.m_event_opt_code = @"视频点击";
    model13.m_img_follow.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:5. width:0.5 color:[UIColor whiteColor]];
    model13.m_img_follow.m_width = 107.;
    model13.m_img_follow.m_height = 71.;

    model13.m_img_followLogo = [[CWUBImageInfo alloc] initWithName:@"upload" width:75. height:75.];
    model13.m_img_followLogo.m_width = 33;
    model13.m_img_followLogo.m_height = 33;
    model13.m_img_followLogo.m_canUserInteract = @"0";

    model13.m_bottomLineInfo.m_color = CWUBDefineCreate_ColorRGB(0xE8E8E8);
    model13.m_bottomLineInfo.m_margin_right = 1;
    [data addObject:model13];

    return model13;
}
@end
