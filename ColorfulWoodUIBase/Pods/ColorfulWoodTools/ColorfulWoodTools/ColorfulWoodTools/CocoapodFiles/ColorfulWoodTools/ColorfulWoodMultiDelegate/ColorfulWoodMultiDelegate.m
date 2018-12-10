//
//  ColorfulWoodMultiDelegate.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/6/6.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "ColorfulWoodMultiDelegate.h"

@interface ColorfulWoodMultiDelegate()
/**
 * 该数组存储所有添加进来的代理类名，作为有效性判断的依据
 */
@property(nonatomic,strong)NSMutableArray * m_arrayClass;
@end

@implementation ColorfulWoodMultiDelegate

- (instancetype)init {

    if (self = [super init]) {
        _delegates = [NSPointerArray weakObjectsPointerArray];
    }

    return self;
}

- (NSMutableArray*)m_arrayClass{

    if (!_m_arrayClass) {
        _m_arrayClass = [NSMutableArray new];
    }

    return _m_arrayClass;
}

#pragma mark - 功能

- (void)interface_addDelegate:(id)delegate {

    if (!delegate) {
        return;
    }

    /**
     * 重复性检查
     */
    for (id temp in self.delegates) {

        if ([delegate isEqual:temp]) {
            return;
        }
    }

    [_delegates addPointer:(__bridge void*)delegate];
}

- (void)interface_removeDelegate:(id)delegate {

    NSUInteger index = [self func_indexOfDelegate:delegate];
    if (index != NSNotFound) {
        [_delegates removePointerAtIndex:index];
    }
    [self interface_compact];
}

- (NSUInteger)func_indexOfDelegate:(id)delegate {

    for (NSUInteger i = 0; i < _delegates.count; i += 1) {
        if ([_delegates pointerAtIndex:i] == (__bridge void*)delegate) {
            return i;
        }
    }
    return NSNotFound;
}

/**
 * 清除野指针
 */
- (void)interface_compact{

    [_delegates addPointer:NULL];
    [_delegates compact];
}


@end
