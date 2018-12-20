//
//  CWUBCell_Publish_Collection_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_Publish_Collection_Model : CWUBModelBase
/**
 * 左侧图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_left;

/**
 * 左侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_Left;

/**
 * 右侧标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_right;


/**
 * 右侧图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_right;
@end

NS_ASSUME_NONNULL_END
