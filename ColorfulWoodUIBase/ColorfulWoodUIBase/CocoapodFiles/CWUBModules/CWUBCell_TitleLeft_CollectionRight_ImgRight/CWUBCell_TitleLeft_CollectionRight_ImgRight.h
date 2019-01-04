//
//  CWUBCell_TitleLeft_CollectionRight_ImgRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/18.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_TitleLeft_CollectionRight_ImgRight_Model.h"


@protocol CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate <CWUBCellBaseDelegate>
@optional
/**
 * 返回选择的行，外面重设tableview的数据，然后刷新该界面
 */
- (void)CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate_constrains:(long)index;

@end

@interface CWUBCell_TitleLeft_CollectionRight_ImgRight : CWUBCellBase
@property (nonatomic, strong) CWUBCell_TitleLeft_CollectionRight_ImgRight_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate> delegate;
@end
