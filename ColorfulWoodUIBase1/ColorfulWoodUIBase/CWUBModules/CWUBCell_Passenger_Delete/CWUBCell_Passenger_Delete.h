//
//  CWUBCell_Passenger_Delete.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_Passenger_Delete_Model.h"

@protocol CWUBCell_Passenger_Delete_Delegate<NSObject>
- (void)CWUBCell_Passenger_Delete_Delegate_Del:(NSString*)strId;
@end

@interface CWUBCell_Passenger_Delete : CWUBCellBase
@property (nonatomic, strong) CWUBCell_Passenger_Delete_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_Passenger_Delete_Delegate> delegate;
@end
