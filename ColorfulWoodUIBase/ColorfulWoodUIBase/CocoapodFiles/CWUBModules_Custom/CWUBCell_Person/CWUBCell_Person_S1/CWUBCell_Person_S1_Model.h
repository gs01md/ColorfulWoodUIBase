//
//  CWUBCell_Person_S1_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/10/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_Person_S1_Model : CWUBModelBase
/**
 * 左侧图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_left;

/**
 * 右侧 上标题 左侧
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightTopLeft;

/**
 * 右侧 上标题 右侧
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightTopRight;

/**
 * 右侧 下标题
 */
@property(nonatomic, strong) CWUBTextInfo * m_title_rightBottom;

/**
 * 右侧图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_right;


@end

NS_ASSUME_NONNULL_END
