//
//  CWUBCell_CharterDetail_Opt_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/26.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

typedef enum : NSUInteger {
    CWUBCell_CharterDetail_Opt_Type_Invalid = 0,
    CWUBCell_CharterDetail_Opt_Type_Pay,
    CWUBCell_CharterDetail_Opt_Type_Cancel,
    CWUBCell_CharterDetail_Opt_Type_Delete,
    CWUBCell_CharterDetail_Opt_Type_Refund_Refer,
    CWUBCell_CharterDetail_Opt_Type_Refunding,
    CWUBCell_CharterDetail_Opt_Type_Refund_Detail,
} CWUBCell_CharterDetail_Opt_Type;

@interface CWUBCell_CharterDetail_Opt_Model : CWUBModelBase
@property(nonatomic, strong) CWUBTextInfo * m_info_first;
@property(nonatomic, strong) CWUBTextInfo * m_info_second;
@end
