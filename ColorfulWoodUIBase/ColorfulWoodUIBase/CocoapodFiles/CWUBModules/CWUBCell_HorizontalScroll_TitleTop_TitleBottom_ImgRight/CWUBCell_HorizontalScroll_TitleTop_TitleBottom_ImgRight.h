//
//  CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model.h"

@protocol CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate <CWUBCellBaseDelegate>
@optional
- (void)CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate_clickWithCode:(NSString*)code;
@end

@interface CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight : CWUBCellBase

@property (nonatomic, strong) CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model *m_model;
@property (nonatomic, weak)id<CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate>delegate;

@end
