//
//  CWUBViewDefault.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/28.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBViewDefault_Model.h"


@protocol CWUBViewDefault_Delegate <NSObject>

/**
 * 点击事件
 */
- (void)CWUBViewDefault_Delegate_click;

@end

@interface CWUBViewDefault : UIView

@property (nonatomic, strong) CWUBViewDefault_Model *m_model;
@property (nonatomic,weak) id<CWUBViewDefault_Delegate> delegate;

- (void) interface_updateWithModel:(CWUBViewDefault_Model*)model;

@end
