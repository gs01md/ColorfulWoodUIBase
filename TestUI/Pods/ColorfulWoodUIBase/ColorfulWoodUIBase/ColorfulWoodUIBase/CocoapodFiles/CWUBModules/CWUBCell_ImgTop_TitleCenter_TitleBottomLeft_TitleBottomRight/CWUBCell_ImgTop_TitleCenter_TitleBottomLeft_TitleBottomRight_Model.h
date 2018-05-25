//
//  CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model : CWUBModelBase

/**
 * 上部图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_top;

/**
 * 中部标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_center;

/**
 * 下部、左边标题：文字右对齐
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottom_left;

/**
 * 下部、右边边标题：文字左对齐
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottom_right;
@end
