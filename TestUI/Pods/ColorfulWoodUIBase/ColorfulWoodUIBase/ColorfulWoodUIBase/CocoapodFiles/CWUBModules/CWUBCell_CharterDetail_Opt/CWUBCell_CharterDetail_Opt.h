//
//  CWUBCell_CharterDetail_Opt.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/26.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_CharterDetail_Opt_Model.h"

@protocol CWUBCell_CharterDetail_Opt_Delegate <NSObject>
@optional
-(void) CWUBCell_CharterDetail_Opt_Delegate_First;
-(void) CWUBCell_CharterDetail_Opt_Delegate_Second;
@end

@interface CWUBCell_CharterDetail_Opt : CWUBCellBase
@property(nonatomic, strong) CWUBCell_CharterDetail_Opt_Model * m_model;
@property(nonatomic, weak) id<CWUBCell_CharterDetail_Opt_Delegate> delegate;

-(id) initWithFrame:(CGRect)frame model:(CWUBCell_CharterDetail_Opt_Model*)model;
@end
