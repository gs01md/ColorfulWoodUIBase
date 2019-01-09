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
@property(nonatomic,strong) UIColor* m_color_backGround;

/**
 * 是否隐藏，默认是0 所以不隐藏
 */
@property(nonatomic,assign) BOOL m_isHidden;

/**
 * 是否设置ClipToBounds为TRUE
 */
@property(nonatomic,assign) BOOL m_isClipToBounds;

/**
 * 照片显示模式
 */
@property(nonatomic,assign) UIViewContentMode m_contentMode;

/**
 * 可用于显示网络图片时的默认图
 */
@property(nonatomic,strong) NSString* m_defaultName;

/**
 * 有时候，传入的是图片，而不是图片名称
 * 一般情况下，只会传入图片或者图片名称中的一种，
 * 如果两者都传入，那应该是手误，有限显示图片，
 * 因为显示图片成本较高，所以程序员想显示图片的几率更大
 *
 * 另外一个场景：显示图片，需要默认一张图片，当选择图片后，就需要显示默认图片了。
 * 这时，就应该显示m_defaultImg，m_defaultImg就变成了一张有效的图片
 * 当不再需要显示m_defaultImg时，m_defaultImg置nil
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

/**
 * 设置边角圆点属性
 */
@property(nonatomic, strong) CWUBModelPoint *m_modelPoint;

/**
 * 点击标识
 */
@property(nonatomic, strong)NSString *m_event_opt_code;

- (instancetype) initWithName:(NSString*)name width:(float)width height:(float)height;

/**
 * 网络图片，宽度铺满，高度按比例
 */
- (instancetype) initWithName:(NSString*)name defaultName:(NSString*)defaultName;

@end
