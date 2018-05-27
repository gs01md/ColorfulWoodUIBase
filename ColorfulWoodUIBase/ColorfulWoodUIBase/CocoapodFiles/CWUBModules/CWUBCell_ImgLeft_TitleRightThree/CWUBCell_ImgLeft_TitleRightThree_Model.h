//
//  CWUBCell_ImgLeft_TitleRightThree_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_ImgLeft_TitleRightThree_Model : CWUBModelBase

/**
 * 背景浮层颜色：可以设置为透明，这样就相当于不显示
 * 虽然显示为图片，但是只是用到其中一些属性，不需要图片名称
 */
@property(nonatomic, strong) CWUBImageInfo * m_back;

/**
 * 左侧图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_left;

/**
 * 右侧 上标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightTop;

/**
 * 右侧 中标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightCenter;

/**
 * 右侧 下标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightBottom;


@end
