//
//  CWUBCell_ButtonLeft_TitleLeft_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_ButtonLeft_TitleLeft_Model : CWUBModelBase

/**
 * 按钮标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_btn;

/**
 * 按钮图标
 */
@property(nonatomic, strong) NSString * m_btnImg;

@property(nonatomic, assign) float m_iconWidth;

@end
