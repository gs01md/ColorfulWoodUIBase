//
//  CWUBCell_Trip_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

typedef enum : NSUInteger {
    /**
     * 任务
     */
    CWUBCell_Trip_Model_TripType_Task,
    /**
     * 调机
     */
    CWUBCell_Trip_Model_TripType_Tuning,
} CWUBCell_Trip_Model_TripType;

@interface CWUBCell_Trip_Model : CWUBModelBase

@property(nonatomic, assign)CWUBCell_Trip_Model_TripType m_fly_type;
/**
 * 出发时间标题
 */
@property(nonatomic, strong)CWUBTextInfo * m_startDateTime_title;

/**
 * 出发时间
 */
@property(nonatomic, strong)CWUBTextInfo * m_startDateTime;

/**
 * 出发地
 */
@property(nonatomic, strong)CWUBTextInfo * m_startCity;

/**
 * 到达
 */
@property(nonatomic, strong)CWUBTextInfo * m_arrivialCity;

/**
 * 用时
 */
@property(nonatomic, strong)CWUBTextInfo * m_flyingHours;

/**
 * 经停
 */
@property(nonatomic, strong)CWUBTextInfo * m_passers;

@end
