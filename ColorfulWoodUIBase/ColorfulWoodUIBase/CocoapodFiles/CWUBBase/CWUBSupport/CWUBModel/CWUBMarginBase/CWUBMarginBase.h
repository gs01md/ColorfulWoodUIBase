//
//  CWUBMarginBase.h
//  ColorfulWoodUIBase
//  用于界定元素之间的上、下、左、右间隔
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWUBUserInteractBase.h"
#import "CWUBModelPoint.h"

@interface CWUBMarginBase : CWUBUserInteractBase
@property(nonatomic, assign)float m_margin_left;
@property(nonatomic, assign)float m_margin_right;
@property(nonatomic, assign)float m_margin_top;
@property(nonatomic, assign)float m_margin_bottom;

/**
 * 用于相对某个元素的CenterY
 */
@property(nonatomic, assign)float m_margin_CenterY;

/**
 * 用于相对某个元素的CenterX
 */
@property(nonatomic, assign)float m_margin_CenterX;

/**
 * tableView的左边距 用于计算控件宽度
 */
@property(nonatomic, assign)float m_margin_tableViewX;
@end
