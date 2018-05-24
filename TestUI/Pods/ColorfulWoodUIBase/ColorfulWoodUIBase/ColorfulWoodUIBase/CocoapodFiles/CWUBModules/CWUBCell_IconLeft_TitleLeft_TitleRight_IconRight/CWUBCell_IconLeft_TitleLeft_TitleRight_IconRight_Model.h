//
//  CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model : CWUBModelBase

/**
 * 左侧图标
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_left;

/**
 * 左侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_left;

/**
 * 右侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_right;

/**
 * 右侧图标
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_right;
@end
