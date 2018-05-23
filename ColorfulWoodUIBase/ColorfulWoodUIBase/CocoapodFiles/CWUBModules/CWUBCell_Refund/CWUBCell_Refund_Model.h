//
//  CWUBCell_Refund_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

/**
 * 申请退款流程界面样式
 * 申请退款初始界面和其它界面元素明显不同，在这里做个区分
 */
typedef enum : NSUInteger {
    CWUBCell_Refund_Model_Type_Normal = 0,
    CWUBCell_Refund_Model_Type_Start,

} CWUBCell_Refund_Model_Type;

@interface CWUBCell_Refund_Model : CWUBModelBase
/**
 * 显示样式，普通 或 申请退款起始列
 */
@property(nonatomic, assign)CWUBCell_Refund_Model_Type m_type_show;

/**
 * 当前退款流程说明
 */
@property(nonatomic, strong)CWUBTextInfo * m_title;

/**
 * 对应信息说明
 */
@property(nonatomic, strong)CWUBTextInfo * m_info;

/**
 * 状态发生的时间
 */
@property(nonatomic, strong)CWUBTextInfo * m_time;
@end
