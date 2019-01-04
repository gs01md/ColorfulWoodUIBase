//
//  CWUBCell_UploadImgWithTitle_S1.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/9/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_UploadImgWithTitle_S1_Model.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CWUBCell_UploadImgWithTitle_S1_Delegate <CWUBCellBaseDelegate>

@optional
/**
 * 点击中间图片
 */
- (void)CWUBCell_UploadImgWithTitle_S1_Delegate_ClickCenterImg;

/**
 * 修改信息事件
 */
- (void)CWUBCell_UploadImgWithTitle_S1_Delegate_ClickModify;

@end


@interface CWUBCell_UploadImgWithTitle_S1 : CWUBCellBase
@property (nonatomic, strong) CWUBCell_UploadImgWithTitle_S1_Model *m_model;
@property (nonatomic,weak) id<CWUBCell_UploadImgWithTitle_S1_Delegate> delegate;
@end


NS_ASSUME_NONNULL_END
