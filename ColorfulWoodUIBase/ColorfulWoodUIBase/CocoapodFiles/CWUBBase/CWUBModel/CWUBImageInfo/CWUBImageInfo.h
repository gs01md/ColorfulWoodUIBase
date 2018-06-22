//
//  CWUBImageInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWUBMarginBase.h"
#import <UIKit/UIKit.h>

@interface CWUBImageInfo : CWUBMarginBase

@property(nonatomic,strong) NSString* m_imgName;
@property(nonatomic,assign) float m_width;
@property(nonatomic,assign) float m_height;

/**
 * 照片显示模式
 */
@property(nonatomic,assign) float m_contentMode;

/**
 * 可用于显示网络图片时的默认图
 */
@property(nonatomic,strong) NSString* m_defaultName;

/**
 * 是否是圆角，默认是FALSE
 */
@property(nonatomic,assign) BOOL m_isCircle;

/**
 * 背景颜色
 */
@property(nonatomic,strong) UIColor * m_color_background;

- (instancetype) initWithName:(NSString*)name width:(float)width height:(float)height;

/**
 * 网络图片，宽度铺满，高度按比例
 */
- (instancetype) initWithName:(NSString*)name defaultName:(NSString*)defaultName;

@end
