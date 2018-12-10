//
//  ColorfulWoodMultiDelegate.h
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/6/6.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorfulWoodMultiDelegate : NSObject

@property (nonatomic, readonly) NSPointerArray *delegates;

- (void)interface_addDelegate:(id)delegate;
- (void)interface_removeDelegate:(id)delegate;

/**
 * 清除野指针
 */
- (void)interface_compact;
@end
