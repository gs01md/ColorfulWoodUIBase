//
//  CWUBCell_TitleLeft_InputLeft.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_InputLeft_Model.h"
@interface CWUBCell_TitleLeft_InputLeft : CWUBCellBase

@property (nonatomic, strong) CWUBCell_TitleLeft_InputLeft_Model * m_model;
/**
 * 获取输入的内容
 */
- (NSString*) interface_getInput;
@end
