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

    CWUBCell_TitleTop_TitleBottom_ImgRight_Model * model15 = [CWUBCell_TitleTop_TitleBottom_ImgRight_Model new];

    model15.m_title_top = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model15.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model15.m_bottomLineInfo.m_color = [UIColor redColor];

    model15.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];

    if (data) {
        [data addObject:model15];
    }

    return model15;

}
@end
