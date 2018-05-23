//
//  CWUBCell_CharterDiscount.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/2.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_CharterDiscount_Model.h"

@interface CWUBCell_CharterDiscount : CWUBCellBase
@property (nonatomic, strong) CWUBCell_CharterDiscount_Model * m_model;
- (id) initWithModel:(CWUBCell_CharterDiscount_Model*)model;
@end
