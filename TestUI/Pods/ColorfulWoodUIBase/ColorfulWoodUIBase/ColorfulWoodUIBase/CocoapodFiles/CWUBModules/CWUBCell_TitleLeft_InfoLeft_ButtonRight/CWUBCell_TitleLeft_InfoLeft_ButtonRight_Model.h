//
//  CWUBCell_TitleLeft_InfoLeft_ButtonRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleLeft_InfoLeft_ButtonRight_Model : CWUBModelBase
/**
 * 标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title;

/**
 * 按钮标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_info;

/**
 * 按钮图标
 */
@property(nonatomic, strong) CWUBImageInfo * m_btnImg;
@end
