//
//  CWUBCell_Company_One.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_Company_One_Model.h"

/**
 * 消息，用于清除默认图片
 */
#define CWUB_NOTIFICATION_CWUBCell_Company_One @"CWUB_NOTIFICATION_CWUBCell_Company_One"


@protocol CWUBCell_Company_One <NSObject>
@optional
/**
 * 点击顶部图片
 */
- (void)CWUBCell_Company_One_topImg;

@end


@interface CWUBCell_Company_One : CWUBCellBase
@property (nonatomic, strong) CWUBCell_Company_One_Model *m_model;
@property (nonatomic,weak) id<CWUBCell_Company_One> delegate;
@end
