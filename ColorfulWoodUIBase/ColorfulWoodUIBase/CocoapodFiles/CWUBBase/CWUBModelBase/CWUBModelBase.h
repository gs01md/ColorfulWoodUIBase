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
#import "CWUBImageInfo.h"
#import "CWUBBottomLineInfo.h"
#import "CWUBCollectionInfo.h"
#import "CWUBCornerInfo.h"
#import <ColorfulWoodCategories/ColorfulWoodCategories.h>
#import "CWUBAttributedTextInfo.h"
#import "CWUBButtonInfo.h"
#import "CWUBModelNotification.h"

@interface CWUBModelBase : NSObject

/**
 * 界面类型
 */
@property(nonatomic, assign)CWUBCellType m_type;
/**
 * 界面类型类名称，用于创建类
 */
@property(nonatomic, strong)NSString *m_typeName;

/**
 * 根据类型获取视图
 * tableView：在不是cell时，可不传
 */
-(UIView*)interface_getView:(UITableView*)tableView;

/**
 * 信息主要标识，可能是订单id、用户id等
 */
@property(nonatomic, strong)NSString *m_id;

/**
 * 用于传出数据，通常配合m_id使用
 */
@property(nonatomic, strong)NSString *m_dataOut;

/**
 * 背景颜色
 */
@property(nonatomic, strong)UIColor *m_color_backGround;

/**
 * 背景图片
 */
@property(nonatomic, strong)CWUBImageInfo *m_img_backGround;

/**
 * 用作点击操作标识
 */
@property(nonatomic, strong)NSString *m_event_opt_code;

/**
 * 底部分割线信息
 */
@property(nonatomic, strong)CWUBBottomLineInfo *m_bottomLineInfo;

/**
 * 边框
 */
@property(nonatomic, strong)CWUBCornerInfo *m_cornerInfo;

/**
 * 测试数据
 */
+ (CWUBModelBase*) tester_data;

/**
 * 测试数据 简化声明
 */
+ (CWUBModelBase*)tester_dataWithArray:(NSMutableArray*)data;

@end
