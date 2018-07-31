//
//  CWUBCell_TitleLeft_ButtonRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_TitleLeft_ButtonRight_Model : CWUBModelBase
/**
 * 标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title;

/**
 * 按钮图标
 */
@property(nonatomic, strong) CWUBImageInfo * m_btnImg;

/**
 * 测试样例2
 */
+ (CWUBCell_TitleLeft_ButtonRight_Model *)tester_dataWithArray2:(NSMutableArray *)data;

/**
 * 测试样例3
 */
+ (CWUBCell_TitleLeft_ButtonRight_Model *)tester_dataWithArray3:(NSMutableArray *)data;
@end
