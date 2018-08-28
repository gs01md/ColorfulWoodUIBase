//
//  CWUBViewBase.h
//  ColorfulWoodUIBase
//  显示界面，可以用于外部使用
//  Created by 大新 on 2018/7/25.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorfulWoodUIBase.h"
#import <Masonry/Masonry.h>

@protocol CWUBViewBaseDelegate <NSObject>

/**
 * 根据code区分点击cell
 */
- (void)CWUBViewBaseDelegate_clickWithCode:(NSString*)code;

/**
 * 下拉刷新
 */
- (void)CWUBViewBaseDelegate_tableViewHeaderRefresh;


/**
 * 上拉刷新
 */
- (void)CWUBViewBaseDelegate_tableViewFooterRefresh;
@end

@interface CWUBViewBase : UIView
@property(nonatomic, strong)CWUBModel *m_model;
@property(nonatomic, strong)UITableView *m_tableView;
@property (nonatomic,weak) id<CWUBViewBaseDelegate> m_baseDelegate;

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 */
- (void)interface_addTableView;

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 */
- (void)interface_addTableViewFrom:(UIView*)view offset:(float)top;

/**
 * 获取控制器，获取视图控制器
 */
- (UIViewController *)inner_findViewController;
@end
