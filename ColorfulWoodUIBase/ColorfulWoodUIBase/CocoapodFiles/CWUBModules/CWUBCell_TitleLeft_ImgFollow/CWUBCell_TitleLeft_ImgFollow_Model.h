//
//  CWUBCell_TitleLeft_ImgFollow_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/8.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CWUBCell_TitleLeft_ImgFollow_Model : CWUBModelBase

/**
 * 标题
 */
@property(nonatomic, strong)CWUBTextInfo* m_title_left;

/**
 * 图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_follow;

/**
 * 图片
 */
@property(nonatomic, strong) CWUBImageInfo * m_img_followLogo;



@end

NS_ASSUME_NONNULL_END
