//
//  CWUBCollectionFlowLayout.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/3.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBCollectionFlowLayoutType.h"

@interface CWUBCollectionFlowLayout : UICollectionViewFlowLayout

/**
 * 两个Cell之间的距离
 */
@property (nonatomic,assign)CGFloat m_betweenOfCell;

/**
 * cell对齐方式
 */
@property (nonatomic,assign)CWUBCollectionFlowLayoutType m_cellType;

-(instancetype)initWthType : (CWUBCollectionFlowLayoutType)cellType;

/**
 * 全能初始化方法 其他方式初始化最终都会走到这里
 */
-(instancetype)initWithType:(CWUBCollectionFlowLayoutType) cellType betweenOfCell:(CGFloat)betweenOfCell;
@end
