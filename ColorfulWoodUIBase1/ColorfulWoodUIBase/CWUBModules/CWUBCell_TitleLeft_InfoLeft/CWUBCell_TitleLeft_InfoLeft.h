//
//  CWUBCell_TitleLeft_InfoLeft.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_InfoLeft_Model.h"

@interface CWUBCell_TitleLeft_InfoLeft : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleLeft_InfoLeft_Model * m_model;
- (void) interface_updateWithModel:(CWUBCell_TitleLeft_InfoLeft_Model*)model;

@end
