//
//  CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model.h"

@implementation CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight;
    }

    return self;
}

+ (CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model * model1 = [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model new];
    model1.m_type = CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight;
    model1.m_title_left = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model1.m_title_right = [[CWUBTextInfo alloc] initWithText:@"内容内" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model1.m_bottomLineInfo.m_color = [UIColor redColor];
    model1.m_title_right.m_event_opt_code = @"内容";
    model1.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
    model1.m_img_right = [[CWUBImageInfo alloc] initWithName:@"big" width:20. height:12.];

    model1.m_img_left.m_margin_left = 25.;
    model1.m_img_right.m_margin_right = 25.;
    model1.m_img_right.m_modelPoint =  [[CWUBModelPoint alloc] initWithDirect:CWPV_LEFT_TOP size:5 offset:5];

    //    model1.m_margin_leftOrRight = 10.;
    //    model1.m_bottomLineType = CWUBBottomLineType_right;
    //    model1.m_title_left.m_labelTextVerticalType = CWUBLabelTextVerticalType_top;
    model1.m_img_backGround = [[CWUBImageInfo alloc] initWithName:@"back1" width:345 height:55];
    model1.m_img_backGround.m_imgName = @"back1";
    model1.m_img_backGround.m_margin_left = 3.;
    model1.m_img_backGround.m_margin_right = 3.;
    model1.m_img_backGround.m_margin_top = 0.;
    model1.m_img_backGround.m_margin_bottom = 0.;

    [data addObject:model1];

    return model1;
}

@end
