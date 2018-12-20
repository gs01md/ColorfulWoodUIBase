//
//  CWUBCell_Publish_Collection_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Publish_Collection_Model.h"

@implementation CWUBCell_Publish_Collection_Model
- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Publish_Collection;
    }

    return self;
}

- (CWUBImageInfo*) m_img_left{

    if (!_m_img_left) {
        _m_img_left = [CWUBImageInfo new];
    }

    return _m_img_left;
}

- (CWUBTextInfo*) m_title_Left{

    if (!_m_title_Left) {
        _m_title_Left = [CWUBTextInfo new];
    }

    return _m_title_Left;
}

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

- (CWUBImageInfo*) _m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageInfo new];
    }

    return _m_img_right;
}


+ (CWUBCell_Publish_Collection_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_Publish_Collection_Model * model6 = [CWUBCell_Publish_Collection_Model new];

    model6.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:25 height:25];
    model6.m_img_left.m_margin_top = CWUBDefine_Width(30);
    model6.m_img_left.m_margin_left =  CWUBDefine_Width(100.);

    model6.m_title_Left = [[CWUBTextInfo alloc] initWithText:@"我的发布" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(68,68,68,1)];
    model6.m_title_Left.m_margin_top = CWUBDefine_Width(15);
    model6.m_title_Left.m_margin_bottom = CWUBDefine_Width(20);

    model6.m_img_right = [[CWUBImageInfo alloc] initWithName:@"left" width:25 height:25];
    model6.m_img_right.m_margin_top = CWUBDefine_Width(20);
    model6.m_img_right.m_margin_right =  CWUBDefine_Width(100.);

    model6.m_title_right = [[CWUBTextInfo alloc] initWithText:@"我的收藏" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(68,68,68,1)];
    model6.m_title_right.m_margin_top = CWUBDefine_Width(15);
    model6.m_title_right.m_margin_bottom = CWUBDefine_Width(20);

    model6.m_img_backGround = [CWUBImageInfo new];
    model6.m_img_backGround.m_imgName = @"back2";
    model6.m_img_backGround.m_margin_left = 3.;
    model6.m_img_backGround.m_margin_right = 3.;
    model6.m_img_backGround.m_margin_top = 0.;
    model6.m_img_backGround.m_margin_bottom = 0.;

    [data addObject:model6];

    return model6;
}
@end
