//
//  CWUBImageViewWithModel.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBImageInfo.h"

@interface CWUBImageViewWithModel : UIImageView

@property(nonatomic, strong)CWUBImageInfo *m_model;
@property(nonatomic, strong) UIViewController *m_controller;

-(instancetype) initWithModel:(CWUBImageInfo*)model;
-(void) interface_update:(CWUBImageInfo*)model;


/**
 * 不执行，因为在 self.m_controller 中执行
 */
- (void)CWUBImageView_clickEvent:(UITapGestureRecognizer*)tap;

/**
 * 获取点击事件对应的标识
 */
+ (NSString *)interface_getEventCode:(UITapGestureRecognizer*)tap;
@end
