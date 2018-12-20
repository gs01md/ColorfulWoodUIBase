//
//  CWUBModelPoint.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/29.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ColorfulWoodPoint/ColorfulWoodPoint.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWUBModelPoint : NSObject
/**
 * 偏移量
 */
@property(nonatomic, assign)float m_offset;

/**
 * 位置， 视图四个角
 */
@property(nonatomic, assign)CWPVDirection m_direct;

/**
 * 圆点背景颜色
 */
@property(nonatomic, strong)UIColor *m_color;

/**
 * 圆点宽高
 */
@property(nonatomic, assign)float m_size;

/**
 * 数目
 */
@property(nonatomic, assign)float m_count;

- (instancetype)initWithDirect:(CWPVDirection)direct size:(float)size offset:(float)offset;
@end

NS_ASSUME_NONNULL_END
