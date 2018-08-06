//
//  CWUBCell_Carousel_One.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_Carousel_One_Model.h"

@interface CWUBCell_Carousel_One : CWUBCellBase
@property (nonatomic, strong) CWUBCell_Carousel_One_Model *m_model;

/**
 * 重新启动动画
 */
- (void)interface_restartTimer;

/**
 * 重新启动动画
 */
- (void)interface_stopTimer;
@end
