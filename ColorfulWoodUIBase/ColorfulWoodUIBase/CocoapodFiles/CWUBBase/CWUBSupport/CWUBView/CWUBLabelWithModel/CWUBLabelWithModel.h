//
//  CWUBLabelWithModel.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBTextInfo.h"
#import <ColorfulWoodCategories/NSString+ColorfulWoodSize.h>
#import "CWUBUITapGestureRecognizer.h"

@interface CWUBLabelWithModel : UILabel
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
