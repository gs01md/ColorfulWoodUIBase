//
//  CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/20.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Model.h"

@protocol CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Delegate <CWUBCellBaseDelegate>
@optional
/**
 * 更新高度
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Delegate_constrains:(NSString*)str;

/**
 * 文本改变
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Delegate_textChanged:(NSString*)str;

/**
 * 可能是任何参数的改变，传出之后，根据参数，单独刷新cell界面，不需要tableview reloaddata ,导致输入框键盘的关闭
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Delegate_changed:(CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Model*)model;

@end

@interface CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Model * m_model;
@property (nonatomic, weak)id<CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRightUp_Delegate> delegate;

- (NSString*) interface_getInput;
@end
