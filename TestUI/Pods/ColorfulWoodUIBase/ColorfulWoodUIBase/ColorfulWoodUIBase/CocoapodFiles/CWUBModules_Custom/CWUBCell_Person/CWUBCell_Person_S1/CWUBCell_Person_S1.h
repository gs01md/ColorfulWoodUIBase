//
//  CWUBCell_Person_S1.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_Person_S1_Model.h"

NS_ASSUME_NONNULL_BEGIN


#define CWUB_NOTIFICATION_CWUBCell_Person_S1 @"CWUB_NOTIFICATION_CWUBCell_Person_S1"
@protocol CWUBCell_Person_S1Delegate <NSObject>
@optional
/**
 * 点击左侧图片
 */
- (void)CWUBCell_Person_S1Delegate_leftImg;

/**
 * 点击右侧图片
 */
- (void)CWUBCell_Person_S1Delegate_rightImg;

@end



@interface CWUBCell_Person_S1 : CWUBCellBase
@property (nonatomic, strong) CWUBCell_Person_S1_Model *m_model;
@property (nonatomic, weak) id<CWUBCell_Person_S1Delegate> delegate;
@end

NS_ASSUME_NONNULL_END
