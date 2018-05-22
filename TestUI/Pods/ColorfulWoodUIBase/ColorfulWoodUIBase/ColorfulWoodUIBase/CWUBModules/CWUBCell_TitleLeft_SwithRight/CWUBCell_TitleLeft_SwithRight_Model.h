//
//  CWUBCell_TitleLeft_SwithRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleLeft_SwithRight_Model : CWUBModelBase
/**
 * 左侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title;
/**
 * 右侧按钮颜色
 */
@property(nonatomic, strong) UIColor * m_color_swith;
@end
