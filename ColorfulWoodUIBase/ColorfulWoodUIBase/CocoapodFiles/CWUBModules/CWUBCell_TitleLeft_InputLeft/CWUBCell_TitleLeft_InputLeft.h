//
//  CWUBCell_TitleLeft_InputLeft.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_InputLeft_Model.h"

@protocol CWUBCell_TitleLeft_InputLeft_Delegate <NSObject>

/**
 * 可能是任何参数的改变，传出之后，根据参数，单独刷新cell界面，不需要tableview reloaddata ,导致输入框键盘的关闭
 */
- (void)CWUBCell_TitleLeft_InputLeft_Delegate_changed:(CWUBCell_TitleLeft_InputLeft_Model*)model;

@end

@interface CWUBCell_TitleLeft_InputLeft : CWUBCellBase

@property (nonatomic, strong) CWUBCell_TitleLeft_InputLeft_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_TitleLeft_InputLeft_Delegate>  delegate;
/**
 * 获取输入的内容
 */
- (NSString*) interface_getInput;
@end
