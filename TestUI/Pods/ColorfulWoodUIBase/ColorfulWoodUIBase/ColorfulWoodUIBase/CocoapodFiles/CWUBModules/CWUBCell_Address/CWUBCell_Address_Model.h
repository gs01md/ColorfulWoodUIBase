//
//  CWUBCell_Address_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_Address_Model : CWUBModelBase

/**
 * 标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title;

/**
 * 标题:姓名 电话
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_name_Phone;

/**
 * 地址
 */
@property(nonatomic, strong) CWUBTextInfo * m_address;

/**
 * 右侧箭头
 */
@property(nonatomic, strong) NSString * m_arrow;


@end
