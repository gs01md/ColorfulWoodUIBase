//
//  CWUBCell_SelectSex_Style1_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/27.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_SelectSex_Style1_Model.h"

@implementation CWUBCell_SelectSex_Style1_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_SelectSex_Style1;
    }

    return self;
}

- (CWUBTextInfo*)m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
        
    }
    return _m_title_left;
}

- (CWUBTextInfo*)m_title_man{

    if (!_m_title_man) {
        _m_title_man = [CWUBTextInfo new];

    }
    return _m_title_man;
}

- (CWUBTextInfo*)m_title_woman{

    if (!_m_title_woman) {
        _m_title_woman = [CWUBTextInfo new];

    }
    return _m_title_woman;
}

+ (CWUBCell_SelectSex_Style1_Model*)tester_dataWithArray:(NSMutableArray*)array{

    CWUBCell_SelectSex_Style1_Model *model18 = [CWUBCell_SelectSex_Style1_Model new];
    model18.m_type = CWUBCellType_SelectSex_Style1;
    model18.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择性别" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model18.m_title_man = [[CWUBTextInfo alloc] initWithText:@"先生" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model18.m_title_man.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model18.m_title_woman = [[CWUBTextInfo alloc] initWithText:@"女士" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model18.m_title_woman.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model18.m_title_man.m_height = 23;
    model18.m_title_woman.m_height = model18.m_title_man.m_height;
    model18.m_title_man.m_width = 50;
    model18.m_title_woman.m_width = 50;
    model18.m_title_man.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:model18.m_title_man.m_height/2. width:0.5 color:[UIColor redColor]];
    model18.m_title_woman.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:model18.m_title_man.m_height/2. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model18.m_title_man.m_margin_left = 40;
    model18.m_cantEnabled = YES;

    if (array) {
        [array addObject:model18];
    }

    return model18;
}

@end
