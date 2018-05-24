//
//  CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model : CWUBModelBase
/**
 * 背景浮层颜色：可以设置为透明，这样就相当于不显示
 */
@property(nonatomic, strong) UIColor * m_backColor;

/**
 * 左侧 上标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_leftTop;

/**
 * 左侧 下标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_leftBottom;

/**
 * 中间图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_center;

/**
 * 右侧 上标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightTop;

/**
 * 右侧 下标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightBottom;

@end
