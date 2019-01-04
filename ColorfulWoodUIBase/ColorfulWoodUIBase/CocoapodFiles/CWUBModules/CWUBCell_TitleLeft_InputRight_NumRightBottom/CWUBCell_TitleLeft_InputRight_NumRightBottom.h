//
//  CWUBCell_TitleLeft_InputRight_NumRightBottom.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/3.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_InputRight_NumRightBottom_Model.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate <CWUBCellBaseDelegate>
@optional
/**
 * 更新高度
 */
- (void)CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate_constrains:(NSString*)str;

/**
 * 文本改变
 */
- (void)CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate_textChanged:(NSString*)str;

/**
 * 可能是任何参数的改变，传出之后，根据参数，单独cell刷新界面，不需要tableview reloaddata ,导致输入框键盘的关闭
 */
- (void)CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate_changed:(CWUBCell_TitleLeft_InputRight_NumRightBottom_Model*)model;

@end

@interface CWUBCell_TitleLeft_InputRight_NumRightBottom : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleLeft_InputRight_NumRightBottom_Model * m_model;
@property (nonatomic, weak)id<CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate> delegate;

- (NSString*) interface_getInput;
@end

NS_ASSUME_NONNULL_END
