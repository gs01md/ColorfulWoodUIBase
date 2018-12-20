//
//  CWUBCell_infoRight_ButtonRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleRight_ButtonRight_Model.h"

@implementation CWUBCell_TitleRight_ButtonRight_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_TitleRight_ButtonRight;
    }

    return self;
}

+ (CWUBCell_TitleRight_ButtonRight_Model *)tester_dataWithArray:(NSMutableArray *)data{

    CWUBCell_TitleRight_ButtonRight_Model * model = [CWUBCell_TitleRight_ButtonRight_Model new];
    model.m_type = CWUBCellType_TitleRight_ButtonRight;
    model.m_title = [[CWUBTextInfo alloc] initWithText:@"查看详情" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
    model.m_event_opt_code = @"查看详情";
    model.m_bottomLineInfo.m_color = [UIColor blueColor];
    [data addObject:model];

    return model;
}

@end
