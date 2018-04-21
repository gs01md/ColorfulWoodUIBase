//
//  CWUBCellBase.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/7.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBModelBase.h"
#import <Masonry/Masonry.h>
#import "CWUBDefine.h"
#import <ColorfulWoodCategories/UIColor+Hex.h>

@interface CWUBCellBase : UITableViewCell

@property (nonatomic, weak) UIViewController * m_delegate;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBModelBase*)model;

- (void) interface_updateWithModel:(CWUBModelBase*)model;

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code;

/**
 * 隐藏底部的虚线
 */
- (void) interface_bottomLine_hidden;
@end