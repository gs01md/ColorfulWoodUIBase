//
//  CWUBCell_ButtonRight_TitleRight_ButtonRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/17.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface CWUBCell_ButtonRight_TitleRight_ButtonRight_Model : CWUBModelBase

/**
 * 按钮图片
 */
@property(nonatomic, strong)NSString* m_button_img;

/**
 * 标题
 */
@property(nonatomic, strong)CWUBTextInfo* m_title;
/**
 * 按钮文字
 */
@property(nonatomic, strong)CWUBTextInfo* m_button_title;
@end
