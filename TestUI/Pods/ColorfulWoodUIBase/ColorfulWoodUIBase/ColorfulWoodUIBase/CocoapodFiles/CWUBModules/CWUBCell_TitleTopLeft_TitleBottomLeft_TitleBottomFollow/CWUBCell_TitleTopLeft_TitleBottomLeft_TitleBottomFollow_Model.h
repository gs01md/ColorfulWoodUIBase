//
//  CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/11/23.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model : CWUBModelBase
@property(nonatomic, strong)CWUBTextInfo* m_title_topLeft;
@property(nonatomic, strong)CWUBTextInfo* m_title_bottomLeft;
@property(nonatomic, strong)CWUBTextInfo* m_title_bottomFollow;

+(CWUBCell_TitleTopLeft_TitleBottomLeft_TitleBottomFollow_Model *)tester_dataWithArray1:(NSMutableArray *)data;
@end

NS_ASSUME_NONNULL_END
