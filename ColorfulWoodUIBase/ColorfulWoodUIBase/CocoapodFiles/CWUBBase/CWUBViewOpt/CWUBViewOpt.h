//
//  CWUBViewOpt.h
//  ColorfulWoodUIBase
//  用于往视图中添加model对应的子视图
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBModel.h"

@interface CWUBViewOpt : NSObject

/**
 * 把model里对应的视图（非cell），添加到父视图view中
 * 返回最后一个视图，便于外面的视图接着往下排列
 * topView：在某个视图的下面开始排列
 */
+(UIView*)interface_addViewsTo:(UIView*)view topView:(UIView*)topView withModel:(CWUBModel*)model;
@end
