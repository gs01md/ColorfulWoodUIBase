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
#import "CWUBCornerInfo.h"

@interface CWUBImageInfo : CWUBMarginBase

@property(nonatomic,strong) NSString* m_imgName;
/**
 * 网络图片
 */
@property(nonatomic,strong) NSString* m_imgUrl;
@property(nonatomic,assign) float m_width;
@property(nonatomic,assign) float m_height;
@property(nonatomic,strong) UIColor* m_color_backGroud;

/**
 * 是否设置ClipToBounds为TRUE
 */
@property(nonatomic,assign) BOOL m_isClipToBounds;

/**
 * 照片显示模式
 */
@property(nonatomic,assign) float m_contentMode;

/**
 * 可用于显示网络图片时的默认图
 */
@property(nonatomic,strong) NSString* m_defaultName;

/**
 * 有时候，传入的是图片，而不是图片名称
 * 一般情况下，只会传入图片或者图片名称中的一种，
 * 如果两者都传入，那应该是手误，有限显示图片，
 * 因为显示图片成本较高，所以程序员想显示图片的几率更大
 */
@property(nonatomic,strong) UIImage* m_defaultImg;

/**
 * 是否是圆角，默认是FALSE
 */
@property(nonatomic,assign) BOOL m_isCircle;

/**
 * 圆角参数
 */
@property(nonatomic,strong) CWUBCornerInfo *m_cornerInfo;

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
