//
//  CWUBCell_CharterDiscount_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/2.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_CharterDiscount_Model : CWUBModelBase

/**
 * 上部图片
 */
@property(nonatomic, strong)NSString* m_img_banner;

/**
 * 左侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_left;

/**
 * 右侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_right;

/**
 * 中间图标
 */
@property(nonatomic, strong) NSString * m_img_center;

/**
 * 左侧-下侧-标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottom_left;

/**
 * 中间-下侧-标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottom_center;

/**
 * 右侧-下侧-标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottom_right;

/**
 * 是否已售完
 */
@property(nonatomic, assign) BOOL m_isSoldOut;
@end
