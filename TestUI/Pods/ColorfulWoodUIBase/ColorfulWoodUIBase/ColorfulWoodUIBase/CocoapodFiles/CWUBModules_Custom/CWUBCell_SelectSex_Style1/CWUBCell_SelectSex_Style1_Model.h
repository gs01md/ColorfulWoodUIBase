//
//  CWUBCell_SelectSex_Style1_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/27.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_SelectSex_Style1_Model : CWUBModelBase
@property(nonatomic, strong)CWUBTextInfo * m_title_left;
@property(nonatomic, strong)CWUBTextInfo * m_title_man;
@property(nonatomic, strong)CWUBTextInfo * m_title_woman;
/**
 * 是否默认选中 女士
 */
@property(nonatomic, assign)BOOL m_isSelectedWoman;

/**
 * 用户是否可以点击，默认是能点击的，值为NO
 */
@property(nonatomic, assign)BOOL m_cantEnabled;

@end
