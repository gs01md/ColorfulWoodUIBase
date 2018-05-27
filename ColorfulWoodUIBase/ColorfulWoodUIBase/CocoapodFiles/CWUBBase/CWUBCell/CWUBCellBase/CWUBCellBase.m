//
//  CWUBCellBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/4/7.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"

@implementation CWUBCellBase

/**
 * 返回cell
 */
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBModelBase*)model{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

    }

    return self;
}

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code{
    return @"";
}

/**
 * 隐藏底部的虚线
 */
- (void) interface_bottomLine_hidden{
    
}

- (void)awakeFromNib {[super awakeFromNib];}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {[super setSelected:selected animated:animated];}

@end
