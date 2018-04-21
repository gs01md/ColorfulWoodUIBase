//
//  CWUBCell_ButtonRotate.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_ButtonRotate_Model.h"

@protocol CWUBCell_ButtonRotate_Deletate <NSObject>
@optional
- (void)CWUBCell_ButtonRotate_Deletate_refer;
@end

@interface CWUBCell_ButtonRotate : CWUBCellBase

@property(nonatomic, strong) CWUBCell_ButtonRotate_Model * m_model;

@property(nonatomic, weak) id<CWUBCell_ButtonRotate_Deletate> delegate;
@end
