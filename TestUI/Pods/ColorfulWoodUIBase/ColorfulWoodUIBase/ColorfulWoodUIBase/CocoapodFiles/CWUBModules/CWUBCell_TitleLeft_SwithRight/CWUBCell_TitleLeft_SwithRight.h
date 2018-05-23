//
//  CWUBCell_TitleLeft_SwithRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_SwithRight_Model.h"

@protocol CWUBCell_TitleLeft_SwithRight_Delegate <NSObject>

- (void)CWUBCell_TitleLeft_SwithRight_Delegate_Switch:(BOOL)swithOn;
@end

@interface CWUBCell_TitleLeft_SwithRight : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleLeft_SwithRight_Model * m_model;
- (id) initWithModel:(CWUBCell_TitleLeft_SwithRight_Model*)model;

@property(nonatomic, weak)id<CWUBCell_TitleLeft_SwithRight_Delegate>delegate;
@end
