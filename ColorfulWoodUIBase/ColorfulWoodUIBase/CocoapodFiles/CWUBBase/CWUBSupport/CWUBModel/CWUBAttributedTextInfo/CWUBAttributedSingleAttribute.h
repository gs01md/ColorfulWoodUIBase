//
//  CWUBAttributedSingleAttribute.h
//  ColorfulWoodUIBase
//  单条属性和值
//  Created by 大新 on 2018/8/1.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWUBAttributedSingleAttribute : NSObject

/**
 * 属性 如: NSForegroundColorAttributeName 、 NSFontAttributeName 、 NSBackgroundColorAttributeName
 */
@property(nonatomic, strong)NSString * m_attributeName;

@property(nonatomic, strong)NSObject * m_attributeValue;

- (instancetype) initWithName:(NSString*) name  value:(NSObject*) obj;

+ (instancetype) createWithName:(NSString*) name  value:(NSObject*) obj;
@end
