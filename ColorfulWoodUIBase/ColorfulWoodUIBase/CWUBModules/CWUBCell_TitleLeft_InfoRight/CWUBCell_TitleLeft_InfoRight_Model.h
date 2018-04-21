//
//  CWUBCell_TitleLeft_InfoRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/14.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleLeft_InfoRight_Model : CWUBModelBase
/**
 * 标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title;

/**
 * 内容
 */
@property(nonatomic, strong) CWUBTextInfo * m_info;
@end
