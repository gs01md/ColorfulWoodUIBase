//
//  CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom.h
//  ColorfulWoodUIBase
//  定制界面，慎用。由于该界面元素比较多，不适合做成通用界面，故此做成定制界面
//  Created by 大新 on 2018/6/11.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model.h"

#define CWUB_NOTIFICATION_CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom @"CWUB_NOTIFICATION_CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom"
@protocol CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottomDelegate <CWUBCellBaseDelegate>
@optional
/**
 * 点击左侧图片
 */
- (void)CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottomDelegate_leftImg;

@end



@interface CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom : CWUBCellBase
@property (nonatomic, strong) CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model *m_model;
@property (nonatomic,weak) id<CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottomDelegate> delegate;
@end
