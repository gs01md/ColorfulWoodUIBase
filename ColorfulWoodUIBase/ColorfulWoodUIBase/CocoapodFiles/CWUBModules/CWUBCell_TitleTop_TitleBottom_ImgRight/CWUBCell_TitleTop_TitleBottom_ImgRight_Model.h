//
//  CWUBCell_TitleTop_TitleBottom_ImgRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleTop_TitleBottom_ImgRight_Model : CWUBModelBase
/**
 * 上标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_top;

/**
 * 下标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottom;

/**
 * 右图标
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_right;
@end
