//
//  CWUBCell_Passenger_Delete_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Passenger_Delete_Model.h"

@implementation CWUBCell_Passenger_Delete_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Passenger_Delete;
    }

    return self;
}

+ (CWUBCell_Passenger_Delete_Model *)tester_dataWithArray:(NSMutableArray *)data{
    
    CWUBCell_Passenger_Delete_Model * model5 = [CWUBCell_Passenger_Delete_Model new];
    model5.m_type = CWUBCellType_Passenger_Delete;
    model5.m_title_id = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_info_id = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_info_name = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_name = [[CWUBTextInfo alloc] initWithText:@"职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_bottomLineInfo.m_color = [UIColor blueColor];
    model5.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];


    [data addObject:model5];

    return model5;
}
@end
