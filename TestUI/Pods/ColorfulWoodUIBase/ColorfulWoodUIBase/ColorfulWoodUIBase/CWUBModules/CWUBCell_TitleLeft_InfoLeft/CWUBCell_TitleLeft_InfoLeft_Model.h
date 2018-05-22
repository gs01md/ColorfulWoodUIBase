//
//  CWUBCell_TitleLeft_InfoLeft_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleLeft_InfoLeft_Model : CWUBModelBase
/**
 * 标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title;

/**
 * 内容
 */
@property(nonatomic, strong) CWUBTextInfo * m_info;

/**
 * 标题高度
 */
@property(nonatomic, assign) float m_titleWidth;


@end
