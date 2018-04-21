//
//  CWUBModel.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/21.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWUBModel : NSObject
/**
 * 显示的数据
 */
@property (nonatomic, strong) NSMutableArray * m_array_show;

/**
 * 根据传入的model id 获取 input数据
 */
- (NSString*)interface_getInputById:(NSString*)strId;
@end
