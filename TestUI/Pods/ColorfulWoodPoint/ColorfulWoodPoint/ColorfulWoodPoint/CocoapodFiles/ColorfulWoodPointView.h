//
//  ColorfulWoodPointView.h
//  ColorfulWoodPoint
//
//  Created by 大新 on 2018/10/29.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, CWPVDirection) {
    CWPV_RIGHT_TOP = 0,
    CWPV_LEFT_TOP,
    CWPV_LEFT_BOTTOM,
    CWPV_RIGHT_BOTTOM
};

@interface ColorfulWoodPointView : UILabel

@property(nonatomic,assign) NSInteger m_pointRadius;
@property(nonatomic,assign) CGFloat m_pointWidth;
@property(nonatomic,assign) CWPVDirection m_curDirection;
@property(nonatomic,strong) UIColor *m_color;

/**
 * 偏移量
 */
@property(nonatomic,assign) float m_offset;

/**
 显示小红点

 @param targetView : 目标视图
 @param count 小红点个数
 @param direction 在目标视图的方位
 */
-(void) interface_showTargetView:(UIView*)targetView forCount:(NSInteger) count location:(CWPVDirection)direction;


/**
 显示小红点

 @param targetView 目标视图
 @param count 未读条数
 @param pos 显示的位置
 */
-(void) interface_showTargetView:(UIView*)targetView forCount:(NSInteger) count position:(CGPoint) pos;

/**
 更新小红点

 @param targetView 目标视图
 @param count 标识数
 */
-(void) interface_updateBadgeView:(UIView*)targetView forCount:(NSInteger)count;

/**
 隐藏小红点

 @param targetView 目标视图
 */
-(void) interface_dissmiss:(UIView*)targetView;

@end

NS_ASSUME_NONNULL_END
