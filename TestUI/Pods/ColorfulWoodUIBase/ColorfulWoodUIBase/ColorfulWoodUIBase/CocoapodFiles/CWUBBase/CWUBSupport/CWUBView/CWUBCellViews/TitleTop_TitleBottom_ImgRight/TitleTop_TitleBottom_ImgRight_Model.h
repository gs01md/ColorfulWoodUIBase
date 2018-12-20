//
//  TitleTop_TitleBottom_ImgRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"

@interface TitleTop_TitleBottom_ImgRight_Model : CWUBModelBase

@property(nonatomic, strong)CWUBTextInfo *m_titleTop;
@property(nonatomic, strong)CWUBTextInfo *m_titleBottom;
@property(nonatomic, strong)CWUBImageInfo *m_imgRight;

/**
 * 标识
 */
@property(nonatomic, strong)NSString *m_code;

@property(nonatomic, assign)float m_width;
@property(nonatomic, assign)float m_height;
@end
