//
//  CWUBCell_ImgCenter_TitleCenter_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/13.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgCenter_TitleCenter_Model.h"

@implementation CWUBCell_ImgCenter_TitleCenter_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_ImgCenter_TitleCenter;
    }

    return self;
}

- (CWUBImageInfo*) m_image{

    if (!_m_image) {
        _m_image = [CWUBImageInfo new];
    }

    return _m_image;
}

- (CWUBTextInfo*) m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }

    return _m_title;
}

+ (CWUBCell_ImgCenter_TitleCenter_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgCenter_TitleCenter_Model *model2 = [CWUBCell_ImgCenter_TitleCenter_Model new];
    model2.m_type = CWUBCellType_ImgCenter_TitleCenter;
    model2.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model2.m_image = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    //    model2.m_title.m_margin_top = 24.;
    //    model2.m_title.m_margin_bottom = 24.;
    model2.m_bottomLineInfo.m_color = [UIColor redColor];
    model2.m_bottomLineInfo.m_height = 10.;
    [data addObject:model2];

    return model2;
}
@end
