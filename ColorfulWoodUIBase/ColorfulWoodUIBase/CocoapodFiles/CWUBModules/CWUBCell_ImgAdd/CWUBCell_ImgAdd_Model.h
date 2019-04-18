//
//  CWUBCell_ImgAdd_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/4/17.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_ImgAdd_Model : CWUBModelBase

//总体的边距
@property(nonatomic, assign)float m_margin_left;
@property(nonatomic, assign)float m_margin_right;
@property(nonatomic, assign)float m_margin_top;
@property(nonatomic, assign)float m_margin_bottom;


/**
 * 图片宽度
 */
@property(nonatomic, assign)float m_imgWidth;

/**
 * 图片高度
 */
@property(nonatomic, assign)float m_imgHeight;

/**
 * 图片数组
 */
@property(nonatomic, strong)NSMutableArray *m_imgArr;

@end

NS_ASSUME_NONNULL_END
