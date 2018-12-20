//
//  CWUBDefaultView.h
//  FangShiLiu
//
//  Created by 大新 on 2018/12/8.
//  Copyright © 2018年 MAC. All rights reserved.
//

/**
 * 由于加入了最下面的一个按钮，按钮还有可能不显示，所以对接口进行扩展
 * 整个默认页由 图片、标题、详情、按钮 四部分组成
 * 按钮现在暂时只是装饰，点击整个页面，都能激活点击事件
 * 图片和标题是最常用的方式 ，默认不显示内容，默认显示按钮
 *
 * 由于样式的种类有限，推荐采用定制接口的方式进行扩展
 */
#import <UIKit/UIKit.h>

typedef void (^CWUBDefaultViewClickBlock)(void);

@protocol CWUBDefaultViewDelegate <NSObject>
@optional
- (void)CWUBDefaultViewDelegate_click;
@end

@interface CWUBDefaultView : UIView

@property (nonatomic, copy) void(^CWUBDefaultViewClickBlock)(void);
@property (nonatomic, weak) id<CWUBDefaultViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame img:(NSString*)img title:(NSString*)title;

/**
 * 更新界面显示的图片和文字
 * 有可能从无网络状态变成无数据状态
 */
- (void)interface_updateImg:(NSString *)img title:(NSString*)title;

/**
 * 无网络 无按钮 无详情
 */
- (void)interface_setNoNet;

/**
 * 无网络 无按钮 无详情
 */
- (void)interface_setNoContent;

/**
 * 无网络 有按钮 无详情
 */
- (void)interface_setNoNet_withBtn;

/**
 * 无内容 有按钮 无详情
 */
- (void)interface_setNoContent_withBtn;

@end
