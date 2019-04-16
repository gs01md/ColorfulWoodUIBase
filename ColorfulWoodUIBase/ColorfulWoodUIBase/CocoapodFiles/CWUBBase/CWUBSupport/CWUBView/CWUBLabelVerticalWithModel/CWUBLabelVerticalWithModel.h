//
//  CWUBLabelVertical.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/4/16.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBLabelWithModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBLabelVerticalWithModel : UIView


@property(nonatomic, strong)CWUBTextInfo* m_model;
-(instancetype) initWithModel:(CWUBTextInfo*)model;
-(void) interface_update:(CWUBTextInfo*)model;

@property(nonatomic, strong) UIViewController *m_controller;
/**
 * 获取控制器，获取视图控制器
 */
- (UIViewController *)inner_findViewController;

/**
 * 获取点击事件对应Label的标识
 */
+ (NSString *)interface_getEventCode:(CWUBUITapGestureRecognizer*)tap;
@end

NS_ASSUME_NONNULL_END
