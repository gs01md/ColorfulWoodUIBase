//
//  CWUBCell_ButtonRight_SpaceBottom.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_ButtonRight_SpaceBottom_Model.h"

@protocol CWUBCell_ButtonRight_SpaceBottom_Delegate <CWUBCellBaseDelegate>
@optional
/**
 * 详情
 */
- (void)CWUBCell_ButtonRight_SpaceBottom_Delegate:(NSString*)strId;

@end

@interface CWUBCell_ButtonRight_SpaceBottom : CWUBCellBase

@property (nonatomic, strong) CWUBCell_ButtonRight_SpaceBottom_Model * m_model;

@property (nonatomic, weak) id<CWUBCell_ButtonRight_SpaceBottom_Delegate> delegate;
@end
