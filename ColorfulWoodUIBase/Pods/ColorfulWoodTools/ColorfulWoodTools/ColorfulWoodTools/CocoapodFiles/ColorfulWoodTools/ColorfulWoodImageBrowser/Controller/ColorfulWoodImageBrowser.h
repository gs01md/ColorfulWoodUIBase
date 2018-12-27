//
//  ColorfulWoodImageBrowser.h
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/12/24.
//  Copyright © 2018 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorfulWoodImageBrowser : UIViewController
/**
 * 图片数组
 */
@property (nonatomic, strong)NSMutableArray *m_imageArray;

/**
 * 起始预览图片位置
 */
@property (nonatomic, assign)NSInteger m_indexPath;

/**
 * 删除图片
 */
@property (nonatomic, copy)void(^block_delete)(NSInteger index);

/**
 * 是否显示删除按钮
 */
@property (assign, nonatomic) BOOL m_isShowDelete;

@end

NS_ASSUME_NONNULL_END
