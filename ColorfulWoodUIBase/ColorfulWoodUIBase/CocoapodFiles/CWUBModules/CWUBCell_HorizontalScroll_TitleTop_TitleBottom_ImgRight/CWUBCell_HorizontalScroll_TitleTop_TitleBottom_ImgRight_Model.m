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
    model.m_bottomLineInfo.m_color = [UIColor blueColor];

    TitleTop_TitleBottom_ImgRight_Model *single = [TitleTop_TitleBottom_ImgRight_Model new];
    single.m_titleTop = [[CWUBTextInfo alloc] initWithText:@"3" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    single.m_titleBottom = [[CWUBTextInfo alloc] initWithText:@"我的关注" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    single.m_width = CWUBDefineDeviceWidth/4.;
    single.m_height = CWUBDefine_Width(80.);
    single.m_imgRight = [[CWUBImageInfo alloc] initWithName:@"right" width:1 height:15];

    TitleTop_TitleBottom_ImgRight_Model *single2 = [TitleTop_TitleBottom_ImgRight_Model new];
    single2.m_width = CWUBDefineDeviceWidth/4.;
    single2.m_height = CWUBDefine_Width(80.);
    single2.m_titleTop = [[CWUBTextInfo alloc] initWithText:@"4" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    single2.m_titleBottom = [[CWUBTextInfo alloc] initWithText:@"我的收藏" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    single2.m_imgRight = [[CWUBImageInfo alloc] initWithName:@"right" width:1 height:15];

    TitleTop_TitleBottom_ImgRight_Model *single3 = [TitleTop_TitleBottom_ImgRight_Model new];
    single3.m_width = CWUBDefineDeviceWidth/4.;
    single3.m_height = CWUBDefine_Width(80.);
    single3.m_titleTop = [[CWUBTextInfo alloc] initWithText:@"5" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    single3.m_titleBottom = [[CWUBTextInfo alloc] initWithText:@"我的资源" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    single3.m_imgRight = [[CWUBImageInfo alloc] initWithName:@"right" width:1 height:15];

    TitleTop_TitleBottom_ImgRight_Model *single4 = [TitleTop_TitleBottom_ImgRight_Model new];
    single4.m_width = CWUBDefineDeviceWidth/4.;
    single4.m_height = CWUBDefine_Width(80.);
    single4.m_titleTop = [[CWUBTextInfo alloc] initWithText:@"6" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    single4.m_titleBottom = [[CWUBTextInfo alloc] initWithText:@"我的商讯" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    single4.m_imgRight = [[CWUBImageInfo alloc] initWithName:@"right" width:1 height:15];

    [model.m_array addObject:single];
    [model.m_array addObject:single2];
    [model.m_array addObject:single3];
    [model.m_array addObject:single4];

    [array addObject:model];

    return model;
}

@end
