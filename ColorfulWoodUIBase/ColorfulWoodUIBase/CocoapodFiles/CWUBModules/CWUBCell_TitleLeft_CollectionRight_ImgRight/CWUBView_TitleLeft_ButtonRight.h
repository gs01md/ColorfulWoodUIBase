//
//  CWUBView_TitleLeft_ButtonRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCollectionCellBase.h"
#import "CWUBView_TitleLeft_ButtonRight_Model.h"

@interface CWUBView_TitleLeft_ButtonRight : UICollectionViewCell

@property (strong, nonatomic) CWUBView_TitleLeft_ButtonRight_Model *m_model;

- (instancetype)initWithModel:(CWUBView_TitleLeft_ButtonRight_Model*)model;

- (void)interface_updateWithModel:(CWUBView_TitleLeft_ButtonRight_Model*)model;
@end
