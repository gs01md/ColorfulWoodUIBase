//
//  CWUBCell_ImgBack_TitleFront_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/21.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgBack_TitleFront_Model.h"

@implementation CWUBCell_ImgBack_TitleFront_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_ImgBack_TitleFront;
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

+(CWUBCell_ImgBack_TitleFront_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgBack_TitleFront_Model * model16 = [CWUBCell_ImgBack_TitleFront_Model new];
    model16.m_type = CWUBCellType_ImgBack_TitleFront;

    model16.m_title = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model16.m_image.m_imgName = @"back";
    model16.m_image.m_contentMode = UIViewContentModeScaleAspectFill;
    model16.m_image.m_height = 100;
    model16.m_image.m_contentMode = UIViewContentModeScaleToFill;
    model16.m_bottomLineInfo.m_color = [UIColor redColor];
    model16.m_image.m_isClipToBounds = YES;
    model16.m_title.m_margin_CenterY = -25.;

    if (data) {
        [data addObject:model16];
    }

    return model16;

}
@end
