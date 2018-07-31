//
//  CWUBCell_Carousel_Model.h
//  ColorfulWoodUIBase
//  图片 文字 轮播
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_Carousel_Model : CWUBModelBase
/**
 * 数组的数组
 * 第一级里，每一个元素代表一条信息
 * 第二级里，每一个元素代表一个lable或者image ,现在只支持这两种类型，其余的不显示
 */
@property(nonatomic, strong)NSMutableArray * m_array;

/**
 * 动画一行需要的时间（秒）
 */
@property(nonatomic, assign)float m_fSecond;

/**
 * 暂时不用
 * 循环时，当剩余长度为m_fWidthShow的一段信息时，开始重复循环
 */
@property(nonatomic, assign)float m_fWidthShow;
@end
