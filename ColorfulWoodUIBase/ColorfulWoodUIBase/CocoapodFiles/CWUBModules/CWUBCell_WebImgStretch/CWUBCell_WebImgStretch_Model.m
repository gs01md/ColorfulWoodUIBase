//
//  CWUBCell_WebImgStretch_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/26.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_WebImgStretch_Model.h"

@implementation CWUBCell_WebImgStretch_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_WebImgStretch;
    }

    return self;
}

- (CWUBImageInfo*) m_image{

    if (!_m_image) {
        _m_image = [CWUBImageInfo new];
    }

    return _m_image;
}

+ (CWUBCell_WebImgStretch_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_WebImgStretch_Model * model2 = [CWUBCell_WebImgStretch_Model new];
    model2.m_type = CWUBCellType_WebImgStretch;
    model2.m_image = [[CWUBImageInfo alloc] initWithName:@"http://img.zcool.cn/community/0112a85874bd24a801219c7729e77d.jpg"  defaultName:@"back"];
    model2.m_bottomLineInfo.m_color = [UIColor clearColor];
    model2.m_image.m_margin_left=1;
    model2.m_image.m_margin_right=1;
    model2.m_image.m_margin_bottom=1;
    model2.m_image.m_margin_top=1;

    [data addObject:model2];

    return model2;
}
@end
