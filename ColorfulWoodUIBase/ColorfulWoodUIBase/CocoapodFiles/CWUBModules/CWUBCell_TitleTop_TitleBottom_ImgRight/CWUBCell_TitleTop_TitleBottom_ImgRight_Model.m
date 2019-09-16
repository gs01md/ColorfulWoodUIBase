//
//  CWUBCell_TitleTop_TitleBottom_ImgRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleTop_TitleBottom_ImgRight_Model.h"

@implementation CWUBCell_TitleTop_TitleBottom_ImgRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_typeName = @"CWUBCell_TitleTop_TitleBottom_ImgRight";
    }

    return self;
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


- (CWUBImageInfo*) m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageInfo new];
    }

    return _m_img_right;
}


+(CWUBModelBase *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleTop_TitleBottom_ImgRight_Model * model = [CWUBCell_TitleTop_TitleBottom_ImgRight_Model new];

    model.m_title_top = [[CWUBTextInfo alloc] initWithText:@"请选择行业请选择行业请选择行业请选择行业请选择行业请选择行业请选择行业" font:[UIFont fontWithName:@"PingFang-SC-Regular" size:15.] color:CWUBDefineCreate_ColorRGB(0x86ADFB)];;
    model.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"选择行业1请选择行业请选择行业请选择行业请选择行业" font:[UIFont fontWithName:@"PingFang-SC-Regular" size:11.] color:CWUBDefineCreate_ColorRGB(0x999999)];
    model.m_title_top.m_margin_bottom = 1;

    model.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:6 height:8];

    model.m_bottomLineInfo.m_color = CWUBDefineCreate_ColorRGB(0xE8E8E8);
    model.m_bottomLineInfo.m_margin_left = CWUBDefine_Width(15);
    model.m_bottomLineInfo.m_margin_right = CWUBDefine_Width(1);
    model.m_bottomLineInfo.m_margin_top = CWUBDefine_Width(15);
    if (data) {
        [data addObject:model];
    }

    return model;

}
@end
