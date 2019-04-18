//
//  CWUBCell_ImgAdd.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/4/17.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_ImgAdd_Model.h"
NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_ImgAdd : CWUBCellBase

/**
 * 需要用到 CWUBCell_ImgAdd_Model 的 m_margin_bottom 和 m_margin_right 作为间距
 */
@property (nonatomic, strong) CWUBCell_ImgAdd_Model * m_model;

/**
 * 用于保存显示图片的控件
 */
@property (nonatomic, strong) NSMutableArray * m_arrayImg;
@end

NS_ASSUME_NONNULL_END
