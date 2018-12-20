//
//  CWUBModelKeyboard.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/23.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWUBModelKeyboard : NSObject
/**
 * 键盘类型
 */
@property(nonatomic, assign) UIKeyboardType m_keyBoardType;

/**
 * 	键盘外观
 */
@property(nonatomic, assign) UIKeyboardAppearance m_keyboardAppearance;

/**
 *  自动大写
 */
@property(nonatomic, assign) UITextAutocapitalizationType m_autocapitalizationType;

/**
 *  自动更正
 */
@property(nonatomic, assign) UITextAutocorrectionType m_autocorrectionType;

/**
 *  安全文本输入 密码样式
 */
@property(nonatomic, assign) BOOL m_secureTextEntry;
@end

NS_ASSUME_NONNULL_END
