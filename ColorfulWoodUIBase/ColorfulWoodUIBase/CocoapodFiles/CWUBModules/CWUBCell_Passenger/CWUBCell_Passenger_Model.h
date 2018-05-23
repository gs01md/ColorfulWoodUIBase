//
//  CWUBCell_Passenger_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_Passenger_Model : CWUBModelBase
/**
 * 标题:姓名
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_name;

/**
 * 内容：姓名
 */
@property(nonatomic, strong) CWUBTextInfo * m_info_name;

/**
 * 标题:身份证
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_id;

/**
 * 内容：身份证
 */
@property(nonatomic, strong) CWUBTextInfo * m_info_id;
@end
