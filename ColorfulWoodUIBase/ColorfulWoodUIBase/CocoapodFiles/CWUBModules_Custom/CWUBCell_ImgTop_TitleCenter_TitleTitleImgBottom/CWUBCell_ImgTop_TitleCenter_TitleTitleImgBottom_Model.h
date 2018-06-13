//
//  CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_ImgTop_TitleCenter_TitleTitleImgBottom_Model : CWUBModelBase
/**
 * 背景浮层颜色：可以设置为透明，这样就相当于不显示
 * 虽然显示为图片，但是只是用到其中一些属性，不需要图片名称
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
