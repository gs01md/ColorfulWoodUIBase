//
//  CWUBCell_ImgCenter.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/24.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_ImgCenter_Model.h"

@protocol CWUBCell_ImgCenter_delegate <CWUBCellBaseDelegate>
@optional
- (void)CWUBCell_ImgCenter_delegate_clickImg;

@end

@interface CWUBCell_ImgCenter : CWUBCellBase
@property (nonatomic, strong) CWUBCell_ImgCenter_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_ImgCenter_delegate> delegate;
@end
