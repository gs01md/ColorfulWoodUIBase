//
//  CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model : CWUBModelBase

/**
 * 左侧图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_left;

/**
 * 右侧 上标题 左侧
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightTopLeft;

/**
 * 右侧 上标题 右侧
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightTopRight;

/**
 * 右侧 下标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightBottom;
@end
