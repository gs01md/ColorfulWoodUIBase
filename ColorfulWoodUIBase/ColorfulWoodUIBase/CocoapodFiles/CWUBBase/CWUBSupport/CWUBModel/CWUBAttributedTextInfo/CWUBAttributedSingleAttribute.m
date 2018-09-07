//
//  CWUBAttributedSingleAttribute.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/8/1.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBAttributedSingleAttribute.h"

@implementation CWUBAttributedSingleAttribute

- (instancetype) initWithName:(NSString*)name  value:(NSObject*) obj{

    if (self = [super init]) {

        self.m_attributeName = name;
        self.m_attributeValue = obj;
    }

    return self;
}

+ (instancetype) createWithName:(NSString*) name  value:(NSObject*) obj{

    return [[CWUBAttributedSingleAttribute alloc] initWithName:name value:obj];
}

@end
