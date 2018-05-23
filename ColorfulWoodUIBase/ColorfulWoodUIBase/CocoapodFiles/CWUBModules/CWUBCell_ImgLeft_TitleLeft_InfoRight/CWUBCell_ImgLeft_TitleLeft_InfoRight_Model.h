//
//  CWUBCell_ImgLeft_TitleLeft_InfoRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_ImgLeft_TitleLeft_InfoRight_Model : CWUBModelBase

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
@property(nonatomic, strong) NSString * m_btnImg;
@end
