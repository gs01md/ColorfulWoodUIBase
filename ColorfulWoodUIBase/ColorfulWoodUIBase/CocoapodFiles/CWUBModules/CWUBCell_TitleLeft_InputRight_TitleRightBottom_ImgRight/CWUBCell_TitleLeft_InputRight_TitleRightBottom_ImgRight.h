//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"


#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model.h"

@protocol CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Delegate <NSObject>

/**
 * 更新高度
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Delegate_constrains:(NSString*)str;

/**
 * 文本改变
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Delegate_textChanged:(NSString*)str;

@end

@interface CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model * m_model;
@property (nonatomic, weak)id<CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Delegate> delegate;

- (NSString*) interface_getInput;
@end
