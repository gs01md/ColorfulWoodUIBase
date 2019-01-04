//
//  CWUBCell_InputLeft_CodeRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/15.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_InputLeft_CodeRight_Model.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CWUBCell_InputLeft_CodeRight_Delegate <CWUBCellBaseDelegate>
@optional

/**
 * 点击右侧的按钮
 */
- (void)CWUBCell_InputLeft_CodeRight_Delegate_right;

/**
 * 更新高度
 */
- (void)CWUBCell_InputLeft_CodeRight_Delegate_constrains:(NSString*)str;

/**
 * 文本改变
 */
- (void)CWUBCell_InputLeft_CodeRight_Delegate_textChanged:(NSString*)str;

/**
 * 可能是任何参数的改变，传出之后，根据参数，单独cell刷新界面，不需要tableview reloaddata ,导致输入框键盘的关闭
 */
- (void)CWUBCell_InputLeft_CodeRight_Delegate_changed:(CWUBCell_InputLeft_CodeRight_Model*)model;
@end

@interface CWUBCell_InputLeft_CodeRight : CWUBCellBase
@property (nonatomic, strong) CWUBCell_InputLeft_CodeRight_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_InputLeft_CodeRight_Delegate> delegate;

- (NSString*) interface_getInput;
@end

NS_ASSUME_NONNULL_END
