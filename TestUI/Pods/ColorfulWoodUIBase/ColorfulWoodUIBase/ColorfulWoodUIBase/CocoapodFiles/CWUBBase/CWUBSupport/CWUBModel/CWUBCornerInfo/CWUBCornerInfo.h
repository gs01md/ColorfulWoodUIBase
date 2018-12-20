//
//  CWUBCornerInfo.h
//  ColorfulWoodUIBase
//  圆角参数
//  Created by 大新 on 2018/6/11.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CWUBCornerInfo : NSObject
/**
 * 圆角大小
 */
@property(nonatomic,assign) float m_cornerRadius;

/**
 * 圆角宽度
 */
@property(nonatomic,assign) float m_cornerWidth;

/**
 * 圆角颜色
 */
@property(nonatomic,strong) UIColor *m_cornerColor;

/**
 * 生成信息
 */
+ (CWUBCornerInfo*)interface_initWithRadius:(float)radius width:(float)width color:(UIColor*)color;

@end
