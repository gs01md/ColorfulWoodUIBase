//
//  CWUBCell_UploadImgWithTitle_S1_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/9/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_UploadImgWithTitle_S1_Model.h"

@implementation CWUBCell_UploadImgWithTitle_S1_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_UploadImgWithTitle_S1;
    }

    return self;
}

- (CWUBImageInfo*) m_img_back{

    if (!_m_img_back) {
        _m_img_back = [CWUBImageInfo new];
    }

    return _m_img_back;
}

- (CWUBImageInfo*) m_img_main{

    if (!_m_img_main) {
        _m_img_main = [CWUBImageInfo new];
    }

    return _m_img_main;
}

- (CWUBImageInfo*) m_img_front{

    if (!_m_img_front) {
        _m_img_front = [CWUBImageInfo new];
    }

    return _m_img_front;
}

/**
 * 点击提示按钮 ，用lable实现
 */
- (CWUBTextInfo*) m_title_click{

    if (!_m_title_click) {
        _m_title_click = [CWUBTextInfo new];
    }

    return _m_title_click;
}

- (CWUBTextInfo*) m_title_top{

    if (!_m_title_top) {
        _m_title_top = [CWUBTextInfo new];
    }

    return _m_title_top;
}

- (CWUBTextInfo*) m_title_bottom{

    if (!_m_title_bottom) {
        _m_title_bottom = [CWUBTextInfo new];
    }

    return _m_title_bottom;
}

+ (CWUBCell_UploadImgWithTitle_S1_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_UploadImgWithTitle_S1_Model * model7 = [CWUBCell_UploadImgWithTitle_S1_Model new];
    model7.m_type = CWUBCellType_UploadImgWithTitle_S1;
    model7.m_img_back = [[CWUBImageInfo alloc] initWithName:@"backModify" width:0. height:0.];
    model7.m_img_back.m_defaultName = @"backModify";
    model7.m_img_back.m_margin_left = 10.;
    model7.m_img_back.m_margin_right = 10.;
    model7.m_img_back.m_color_background = [UIColor whiteColor];
    model7.m_img_back.m_isCircle = YES;
    model7.m_img_back.m_height = CWUBDefine_Width(342);

    model7.m_img_main = [[CWUBImageInfo alloc] initWithName:@"main" width:CWUBDefine_Width(186) height:CWUBDefine_Width(120)];
    model7.m_img_main.m_margin_top = CWUBDefine_Width(88);
    model7.m_img_front = [[CWUBImageInfo alloc] initWithName:@"pass" width:CWUBDefine_Width(80) height:CWUBDefine_Width(80)];
    model7.m_img_front.m_contentMode = UIViewContentModeScaleAspectFit;
    model7.m_img_front.m_canUserInteract = @"1";
    model7.m_title_top = [[CWUBTextInfo alloc] initWithText:@"请上传营业执照" font:[UIFont fontWithName:@"PingFangSC-Regular" size:18] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_top.m_margin_top = CWUBDefine_Width(25);

    model7.m_title_click = [[CWUBTextInfo alloc] initWithText:@"修改个人认证资料" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];
    model7.m_title_click.m_margin_top = CWUBDefine_Width(246);
    model7.m_title_click.m_width =  CWUBDefine_Width(150);
    model7.m_title_click.m_height =  CWUBDefine_Width(44);
    model7.m_title_click.m_canUserInteract = @"1";
    model7.m_title_click.m_color_backGroud = CWUBDefineCreate_ColorRGB(0xEBEBEB);
    model7.m_title_click.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_ColorRGB(0xEBEBEB)];

    model7.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"请确保营业执照的编号、文字、照片清晰可见" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_bottom.m_margin_bottom = CWUBDefine_Width(25);
    model7.m_title_click.m_lblCanClick = YES;

    model7.m_event_opt_code = @"上传营业执照";

    [data addObject:model7];

    return model7;
}


+ (CWUBCell_UploadImgWithTitle_S1_Model *)tester_dataWithArray2:(NSMutableArray *)data{

    CWUBCell_UploadImgWithTitle_S1_Model * model7 = [CWUBCell_UploadImgWithTitle_S1_Model new];
    model7.m_type = CWUBCellType_UploadImgWithTitle_S1;
    model7.m_img_back = [[CWUBImageInfo alloc] initWithName:@"background" width:0. height:0.];
    model7.m_img_back.m_defaultName = @"background";
    model7.m_img_back.m_margin_left = 10.;
    model7.m_img_back.m_margin_right = 10.;
    model7.m_img_back.m_color_background = [UIColor whiteColor];
    model7.m_img_back.m_isCircle = YES;
    model7.m_img_back.m_height = CWUBDefine_Width(273);

    model7.m_img_main = [[CWUBImageInfo alloc] initWithName:@"main" width:CWUBDefine_Width(186) height:CWUBDefine_Width(120)];
    model7.m_img_main.m_margin_top = CWUBDefine_Width(80);
    model7.m_img_front = [[CWUBImageInfo alloc] initWithName:@"pass" width:CWUBDefine_Width(80) height:CWUBDefine_Width(80)];
    model7.m_img_front.m_contentMode = UIViewContentModeScaleAspectFit;

    model7.m_title_top = [[CWUBTextInfo alloc] initWithText:@"请上传营业执照" font:[UIFont fontWithName:@"PingFangSC-Regular" size:18] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_top.m_margin_top = CWUBDefine_Width(25);

    model7.m_title_click = [[CWUBTextInfo alloc] initWithText:@"" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:CWUBDefineCreate_ColorRGB(0xFFFFFF)];
    model7.m_title_click.m_isHidden = YES;

    model7.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"请确保营业执照的编号、文字、照片清晰可见" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_bottom.m_margin_bottom = CWUBDefine_Width(25);

    [data addObject:model7];

    return model7;
}

@end
