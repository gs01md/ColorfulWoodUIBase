//
//  CWUBCellViewBase.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBModelBase.h"
#import "CWUBLabelWithModel.h"
#import "CWUBImageViewWithModel.h"
#import <Masonry/Masonry.h>

@interface CWUBCellViewBase : UIView

-(instancetype)initWithModel:(CWUBModelBase*)model;

@property(nonatomic, strong)CWUBModelBase *m_model;


/**
 * 添加元素
 */
- (void)inner_initWithSubViews;

/**
 * 布局
 */
- (void)inner_updateConsrtains;

- (void)interface_updateWithModel:(CWUBModelBase*)model;

@end
