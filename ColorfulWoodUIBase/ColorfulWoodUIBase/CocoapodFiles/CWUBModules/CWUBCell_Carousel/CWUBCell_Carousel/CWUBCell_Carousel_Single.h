//
//  CWUBCell_Carousel_Single.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBCell_Carousel_Single_Model.h"

@interface CWUBCell_Carousel_Single : UIView
@property(nonatomic, strong)CWUBCell_Carousel_Single_Model *m_model;

-(instancetype)initWithModel:(CWUBCell_Carousel_Single_Model*)model;

/**
 * 获取总长度
 */
- (float) interface_getLength;
@end
