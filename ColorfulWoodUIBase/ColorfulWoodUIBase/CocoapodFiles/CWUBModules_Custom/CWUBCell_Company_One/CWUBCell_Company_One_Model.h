//
//  CWUBCell_Company_One_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_Company_One_Model : CWUBModelBase
/**
 * 背景图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_back;

/**
 * 上部图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_top;

/**
 * 中标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_center;

/**
 * 下侧 左标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottomLeft;

/**
 * 下侧 中标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottomCenter;

/**
 * 下侧 右图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_bottomRight;
@end
