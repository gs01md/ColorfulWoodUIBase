//
//  CWUBAttributedTextInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/8/1.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBTextInfo.h"
#import "CWUBAttributedSingleRange.h"

@interface CWUBAttributedTextInfo : CWUBTextInfo

@property(nonatomic, strong) NSMutableAttributedString * m_attributedText;

@property(nonatomic, strong) NSMutableArray<CWUBAttributedSingleRange *> * m_arrayRange;

-(instancetype) initWithText:(NSString*)text;

/**
 * 添加一段文字及其属性 如: NSForegroundColorAttributeName 、 NSFontAttributeName 、 NSBackgroundColorAttributeName
 */
- (void) interface_addSingle:(CWUBAttributedSingleRange *) single, ...;

@end
