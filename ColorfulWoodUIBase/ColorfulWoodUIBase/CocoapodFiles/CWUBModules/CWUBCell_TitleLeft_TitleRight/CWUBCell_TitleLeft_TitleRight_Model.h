//
//  CWUBCell_TitleLeft_TitleRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleLeft_TitleRight_Model : CWUBModelBase
/**
 * 左侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_left;

/**
 * 右侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_right;
@end
