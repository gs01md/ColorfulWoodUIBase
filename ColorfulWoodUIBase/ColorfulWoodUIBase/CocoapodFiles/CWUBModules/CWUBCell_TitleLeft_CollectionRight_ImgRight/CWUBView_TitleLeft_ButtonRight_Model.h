//
//  CWUBView_TitleLeft_ButtonRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBViewModelBase.h"

@interface CWUBView_TitleLeft_ButtonRight_Model : CWUBViewModelBase
@property(nonatomic,strong)CWUBTextInfo *m_title;
@property(nonatomic,strong)CWUBImageInfo *m_img;

- (instancetype)initWithTitle:(CWUBTextInfo*)title img:(CWUBImageInfo*)img;
@end
