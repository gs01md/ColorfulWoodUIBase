//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/15.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

#define CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_NOTI @"CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_NOTI"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model : CWUBModelBase
@property(nonatomic, strong)CWUBTextInfo* m_title_left;
@property(nonatomic, strong)CWUBTextInfo* m_input_right;
@property(nonatomic, strong)CWUBTextInfo *m_title_bottomRight;
@property(nonatomic, strong)CWUBTextInfo *m_title_right;

/**
 * 停止计时器
 */
@property(nonatomic, assign)BOOL m_stopTimer;
+(CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Model *)tester_dataWithArray2:(NSMutableArray *)data;
@end

NS_ASSUME_NONNULL_END
