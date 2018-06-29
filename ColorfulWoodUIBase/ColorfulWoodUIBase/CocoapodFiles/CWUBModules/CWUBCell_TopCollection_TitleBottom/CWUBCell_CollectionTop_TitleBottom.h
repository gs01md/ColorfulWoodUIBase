//
//  CWUBCell_Collection.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/29.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_CollectionTop_TitleBottom_Model.h"


@protocol CWUBCell_CollectionTop_TitleBottom_Delegate <NSObject>

/**
 * 返回选择的行，外面重设tableview的数据，然后刷新该界面
 */
- (void)CWUBCell_CollectionTop_TitleBottom_Delegate_constrains:(long)index;

@end

@interface CWUBCell_CollectionTop_TitleBottom : CWUBCellBase
@property (nonatomic, strong) CWUBCell_CollectionTop_TitleBottom_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_CollectionTop_TitleBottom_Delegate> delegate;
@end
