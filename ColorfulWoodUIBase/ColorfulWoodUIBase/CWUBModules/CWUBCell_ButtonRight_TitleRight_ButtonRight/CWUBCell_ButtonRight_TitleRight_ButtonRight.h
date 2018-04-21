//
//  CWUBCell_ButtonRight_TitleRight_ButtonRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_ButtonRight_TitleRight_ButtonRight_Model.h"

@protocol CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate<NSObject>
@optional
/**
 * 已阅读并同意
 */
- (void)CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate_Agree;

/**
 * 协议
 */
- (void)CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate_Protocol;
@end

@interface CWUBCell_ButtonRight_TitleRight_ButtonRight : CWUBCellBase

@property (nonatomic, strong) CWUBCell_ButtonRight_TitleRight_ButtonRight_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_ButtonRight_TitleRight_ButtonRight_Delegate> delegate;
@end
