//
//  CWUBCell_MyFollow_MyBusiness.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_MyFollow_MyBusiness_Model.h"

@protocol CWUBCell_MyFollow_MyBusinessDelegate<NSObject>
@optional
- (void)CWUBCell_MyFollow_MyBusinessDelegate_left;
- (void)CWUBCell_MyFollow_MyBusinessDelegate_right;
@end

@interface CWUBCell_MyFollow_MyBusiness : CWUBCellBase
@property (nonatomic, strong) CWUBCell_MyFollow_MyBusiness_Model * m_model;

@property (nonatomic, weak) id<CWUBCell_MyFollow_MyBusinessDelegate>delegate;
@end
