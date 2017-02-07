//
//  CWUBViewBase.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2017/2/4.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBDefine.h"

@protocol CWUBViewBaseDelegate <NSObject>

/**
 * 视图点击事件
 */
- (void)CWUBViewBaseDelegate_viewClick;

@end

@interface CWUBViewBase : UIView

@property (nonatomic,weak) id<CWUBViewBaseDelegate> delegate;

//- (void) initWidget;
@end
