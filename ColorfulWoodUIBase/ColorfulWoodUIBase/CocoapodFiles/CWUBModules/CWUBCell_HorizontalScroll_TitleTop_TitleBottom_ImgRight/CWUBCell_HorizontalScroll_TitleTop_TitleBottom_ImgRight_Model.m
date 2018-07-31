//
//  CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model.h"
#import "TitleTop_TitleBottom_ImgRight_Model.h"

@implementation CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_HorizontalScroll_TitleTop_TitleBottom_ImgRight;
    }

    return self;
}

- (NSMutableArray<TitleTop_TitleBottom_ImgRight_Model*> *) m_array{

    if (!_m_array) {
        _m_array = [NSMutableArray<TitleTop_TitleBottom_ImgRight_Model*> new];
    }

    return _m_array;
}

+ (CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model*)tester_dataWithArray:(NSMutableArray*) array{

    CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model *model = [CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model new];
    model.m_bottomLineInfo.m_color = CWUBDefineCreate_Color(243, 243, 243, 1);
    model.m_bottomLineInfo.m_margin_left = 0.1;
    model.m_bottomLineInfo.m_margin_right = 0.1;
    model.m_bottomLineInfo.m_height = 10.;

    NSArray * arrayNum = @[@"3",@"4",@"5",@"6"];
    NSArray * arrayTitle = @[@"我的关注",@"我的收藏",@"我的资源",@"我的商讯"];

    for (int i=0; i<arrayNum.count; i++) {
        TitleTop_TitleBottom_ImgRight_Model *single = [TitleTop_TitleBottom_ImgRight_Model new];
        single.m_titleTop = [[CWUBTextInfo alloc] initWithText:arrayNum[i] font:[UIFont fontWithName:@"PingFangSC-Semibold" size:18] color:CWUBDefineCreate_Color(51, 51, 51, 1)];
        single.m_titleBottom = [[CWUBTextInfo alloc] initWithText:arrayTitle[i] font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51, 51, 51, 1)];
        single.m_titleTop.m_margin_top = CWUBDefine_Width(15.);
        single.m_titleTop.m_margin_bottom = CWUBDefine_Width(1.);
        single.m_width = CWUBDefineDeviceWidth/4.;
        single.m_height = CWUBDefine_Width(88.);
        single.m_imgRight = [[CWUBImageInfo alloc] initWithName:@"left" width:1 height:17];
        single.m_code = arrayTitle[i];
        [model.m_array addObject:single];
    }

    [array addObject:model];

    return model;
}

@end
