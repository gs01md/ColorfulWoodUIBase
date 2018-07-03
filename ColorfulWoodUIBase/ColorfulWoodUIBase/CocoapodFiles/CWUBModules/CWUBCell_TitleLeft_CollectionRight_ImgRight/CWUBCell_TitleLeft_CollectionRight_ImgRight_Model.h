//
//  CWUBCell_TitleLeft_CollectionRight_ImgRight_Model.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/18.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBModelBase.h"
#import "CWUBCollectionFlowLayout.h"

@interface CWUBCell_TitleLeft_CollectionRight_ImgRight_Model : CWUBModelBase
@property(nonatomic, strong)CWUBTextInfo *m_title_left;
@property(nonatomic, strong)CWUBTextInfo *m_title_right;
@property(nonatomic, strong)CWUBTextInfo *m_title_rightBottom;
@property(nonatomic, strong)CWUBCollectionInfo *m_collection_right;
@property(nonatomic, strong)CWUBImageInfo *m_img_right;
@property(nonatomic, strong)CWUBCollectionFlowLayout *m_layout;
@end
