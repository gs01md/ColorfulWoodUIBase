//
//  CWUBCell_Passenger_Opt.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_Passenger_Opt_Model.h"

@protocol CWUBCell_Passenger_Opt_Delegate <CWUBCellBaseDelegate>
@optional
-(void) CWUBCell_Passenger_Opt_Delegate_save;
-(void) CWUBCell_Passenger_Opt_Delegate_cancel;
@end

@interface CWUBCell_Passenger_Opt : CWUBCellBase
@property (nonatomic, strong) CWUBCell_Passenger_Opt_Model * m_model;

@property (nonatomic, weak) id<CWUBCell_Passenger_Opt_Delegate> delegate;
@end
