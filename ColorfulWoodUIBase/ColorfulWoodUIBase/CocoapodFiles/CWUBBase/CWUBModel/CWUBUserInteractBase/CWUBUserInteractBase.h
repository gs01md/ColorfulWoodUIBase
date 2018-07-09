//
//  CWUBUserInteractBase.h
//  ColorfulWoodUIBase
//  定义用户界面是否可以点击
//  Created by 大新 on 2018/7/9.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWUBUserInteractBase : NSObject
/**
 * 默认应该是可以点击的： 1 可以点击； 其它 不可点击
 */
@property(nonatomic, strong)NSString *m_canUserInteract;
@end
