//
//  CWUBCell_UploadImgWithTitle_S1_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/9/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_UploadImgWithTitle_S1_Model : CWUBModelBase
/**
 * 背景图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_back;

/**
 * 主要图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_main;

/**
 * 前部图片 用户选择和显示 标识作用 ，一般是半透明或者比较小
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_front;

/**
 * 点击提示按钮 ，用lable实现
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_click;

/**
 * 上标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_top;

/**
 * 下标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_bottom;

+ (CWUBCell_UploadImgWithTitle_S1_Model *)tester_dataWithArray2:(NSMutableArray *)data;
@end

NS_ASSUME_NONNULL_END
