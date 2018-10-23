//
//  CWUBCell_ImgCenter_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_ImgCenter_Model.h"

@implementation CWUBCell_ImgCenter_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_ImgCenter;
    }

    return self;
}

- (CWUBImageInfo*) m_image{

    if (!_m_image) {
        _m_image = [CWUBImageInfo new];
    }

    return _m_image;
}

+ (CWUBCell_ImgCenter_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_ImgCenter_Model * model3 = [CWUBCell_ImgCenter_Model new];
    model3.m_type = CWUBCellType_ImgCenter;
    model3.m_bottomLineInfo.m_color = [UIColor clearColor];
    model3.m_image = [[CWUBImageInfo alloc] initWithName:@"back" width:90. height:90.];
    model3.m_image.m_isCircle = YES;
    model3.m_image.m_canUserInteract = @"1";
    [data addObject:model3];
    return model3;
}
@end
