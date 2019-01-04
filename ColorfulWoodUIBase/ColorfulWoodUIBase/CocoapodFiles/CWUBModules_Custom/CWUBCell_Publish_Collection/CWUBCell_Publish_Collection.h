//
//  CWUBCell_Publish_Collection.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_Publish_Collection_Model.h"

NS_ASSUME_NONNULL_BEGIN

#define CWUB_NOTIFICATION_CWUBCell_Publish_Collection @"CWUB_NOTIFICATION_CWUBCell_Publish_Collection"
@protocol CWUBCell_Publish_CollectionDelegate <CWUBCellBaseDelegate>
@optional
/**
 * 点击左侧图片
 */
- (void)CWUBCell_Publish_CollectionDelegate_leftImg;

/**
 * 点击右侧图片
 */
- (void)CWUBCell_Publish_CollectionDelegate_rightImg;

@end



@interface CWUBCell_Publish_Collection : CWUBCellBase
@property (nonatomic, strong) CWUBCell_Publish_Collection_Model *m_model;
@property (nonatomic, weak) id<CWUBCell_Publish_CollectionDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
