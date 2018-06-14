//
//  CWUBCell_Company_One.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/12.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_Company_One_Model.h"


@protocol CWUBCell_Company_One <NSObject>

/**
 * 点击顶部图片
 */
- (void)CWUBCell_Company_One_topImg;

@end


@interface CWUBCell_Company_One : CWUBCellBase
@property (nonatomic, strong) CWUBCell_Company_One_Model *m_model;
@property (nonatomic,weak) id<CWUBCell_Company_One> delegate;
@end
