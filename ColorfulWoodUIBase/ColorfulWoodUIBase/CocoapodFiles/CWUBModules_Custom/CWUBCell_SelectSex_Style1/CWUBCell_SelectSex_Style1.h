//
//  CWUBCell_SelectSex_Style1.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/27.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_SelectSex_Style1_Model.h"

@protocol CWUBCell_SelectSex_Style1_Delegate<NSObject>
- (void)CWUBCell_SelectSex_Style1_Delegate_selectMan;
- (void)CWUBCell_SelectSex_Style1_Delegate_selectWoman;
@end

@interface CWUBCell_SelectSex_Style1 : CWUBCellBase
@property (nonatomic, strong) CWUBCell_SelectSex_Style1_Model * m_model;
@property (nonatomic, weak)id<CWUBCell_SelectSex_Style1_Delegate> delegate;
@end
