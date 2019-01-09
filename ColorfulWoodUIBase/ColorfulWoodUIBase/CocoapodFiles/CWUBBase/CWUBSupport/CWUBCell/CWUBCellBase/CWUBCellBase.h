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
#import "CWUBLabelWithModel.h"
#import "CWUBLableLeftTop.h"
#import "CWUBTextfieldWithModel.h"
#import "CWUBTextView.h"
#import "CWUBImageViewWithModel.h"
#import <SDWebImage/UIImageView+WebCache.h>

@protocol CWUBCellBaseDelegate <NSObject>
@optional
- (void)CWUBCellBaseDelegate_textView_endEditing:(CWUBModelBase *)model;

@end

@interface CWUBCellBase : UITableViewCell

@property (nonatomic, weak) UITableView *m_tableView;

@property (nonatomic, weak) id<CWUBCellBaseDelegate> m_delegate;

@property (nonatomic, strong) CWUBImageViewWithModel * m_img_sep;

/**
 * 背景图片
 */
@property (nonatomic, strong) CWUBImageViewWithModel * m_img_backGround;

/**
 * 返回cell
 */
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier model:(CWUBModelBase*)model;

/**
 * 返回视图
 */
- (id)initWithModel:(CWUBModelBase*)model;

- (void)interface_updateWithModel:(CWUBModelBase*)model;

/**
 * 根据参数刷新界面
 */
- (void)interface_updateWithCode:(NSString*)code;

/**
 * 获取该列的操作标识 - 用于点击事件
 */
- (NSString*) interface_get_event_opt_code;

/**
 * 隐藏底部的虚线
 */
- (void) interface_bottomLine_hidden;

/**
 * 设置底部分割线
 */
- (void) interface_updateBottomLine;
@end
