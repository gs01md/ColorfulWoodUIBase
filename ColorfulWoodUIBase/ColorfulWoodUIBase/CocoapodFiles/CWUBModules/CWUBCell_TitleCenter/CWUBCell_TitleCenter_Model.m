//
//  CWUBCell_TitleCenter_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleCenter_Model.h"

@implementation CWUBCell_TitleCenter_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleCenter;
    }

    return self;
}

- (CWUBTextInfo*) m_title{

    if (!_m_title) {
        _m_title = [CWUBTextInfo new];
    }

    return _m_title;
}

+ (CWUBCell_TitleCenter_Model*)tester_dataWithArray:(NSMutableArray*)array{

    CWUBCell_TitleCenter_Model *model17 = [CWUBCell_TitleCenter_Model new];
    model17.m_type = CWUBCellType_TitleCenter;
    model17.m_title.m_margin_top = 1.;
    model17.m_title.m_margin_bottom = 1.;
    model17.m_title.m_text = @"*资料认证未通过，点击进入修改";
    model17.m_title.m_labelTextHorizontalType = CWUBLabelTextHorizontalType_center;
    model17.m_title.m_color = [UIColor redColor];
    model17.m_title.m_color_backGroud = [UIColor blueColor];
    model17.m_bottomLineInfo.m_image = @"line";
    model17.m_title.m_height = 50.;
    model17.m_color_backGround = [UIColor redColor];
    model17.m_title.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];

    if (array) {
        [array addObject:model17];
    }

    return model17;
}
@end
