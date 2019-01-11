//
//  CWUBCell_Passenger_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Passenger_Model.h"

@implementation CWUBCell_Passenger_Model

- (instancetype) init{

    if (self = [super init]) {
        self.m_type = CWUBCellType_Passenger;
    }

    return self;
}

@end
