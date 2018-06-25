//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model.h"

@protocol CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate <NSObject>

/**
 * 更新高度
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate_constrains:(NSString*)str;

/**
 * 文本改变
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate_textChanged:(NSString*)str;

@end

@interface CWUBCell_TitleLeft_InputRight_TitleRightBottom : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model * m_model;
@property (nonatomic, weak)id<CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate> delegate;

- (NSString*) interface_getInput;
@end
