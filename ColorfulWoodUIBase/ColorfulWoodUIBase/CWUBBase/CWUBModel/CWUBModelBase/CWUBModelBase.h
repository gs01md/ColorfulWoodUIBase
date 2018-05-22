//
//  CWUBModelBase.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/7.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWUBCellType.h"
#import <UIKit/UIKit.h>
#import "CWUBTextInfo.h"
#import "CWUBDefine.h"
#import "CWUBBottomLineType.h"

@interface CWUBModelBase : NSObject

/**
 * 界面类型
 */
@property(nonatomic, assign)CWUBCellType m_type;

/**
 * 根据类型获取视图
 * tableView：在不是cell时，可不传
 */
-(UIView*)interface_getView:(UITableView*)tableView;


/**
 * 信息主要标识，可能是订单id、用户id等
 */
@property(nonatomic, strong)NSString* m_id;

/**
 * 用于传出数据，通常配合m_id使用
 */
@property(nonatomic, strong)NSString * m_dataOut;

/**
 * 是否隐藏底部的分割线
 */
@property(nonatomic, assign)BOOL m_isHiddenBottom;

/**
 * 设置底部分割线的颜色，实心
 * 设置了之后 底部分割线自动隐藏
 */
@property(nonatomic, strong)UIColor *m_color_bottomLine;

/**
 * 上下间隔距离
 */
@property(nonatomic, assign)float m_margin_topOrBottom;

/**
 * 左右边间距
 */
@property(nonatomic, assign)float m_margin_leftOrRight;

/**
 * 用作点击操作标识
 */
@property(nonatomic, strong)NSString * m_event_opt_code;

/**
 * 底部分割线的样式
 */
@property(nonatomic, assign)CWUBBottomLineType  m_bottomLineType;

@end
