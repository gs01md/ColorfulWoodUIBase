//
//  CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/11/23.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model.h"

NS_ASSUME_NONNULL_BEGIN


@protocol CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Delegate <CWUBCellBaseDelegate>
@optional

/**
 * 点击
 */
- (void)CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_click;

@end

@interface CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Delegate> delegate;

@end

NS_ASSUME_NONNULL_END
