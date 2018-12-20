//
//  CWUBCell_Carousel_One_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/29.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_Carousel_Model.h"

@interface CWUBCell_Carousel_One_Model : CWUBCell_Carousel_Model

/**
 * 左侧固定的按钮
 */
@property(nonatomic, strong)CWUBImageInfo *m_img_left;

/**
 * 视图高度
 */
@property(nonatomic, assign)float m_height;

/**
 * 动画后停留多久
 */
@property(nonatomic, assign)float m_stayTime;

@end
