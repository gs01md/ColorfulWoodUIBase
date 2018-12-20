//
//  CWUBModelNotification.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/11/6.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWUBModelNotification : NSObject
/**
 * 标识
 */
@property(nonatomic, strong) NSString * m_code;

/**
 * 参数值
 */
@property(nonatomic, strong) NSString * m_value;
@end

NS_ASSUME_NONNULL_END
