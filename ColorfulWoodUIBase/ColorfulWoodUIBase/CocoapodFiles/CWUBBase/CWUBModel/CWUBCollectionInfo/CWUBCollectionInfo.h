//
//  CWUBCollectionInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/18.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBMarginBase.h"
#import "CWUBCollectionFlowLayout.h"

@interface CWUBCollectionInfo : CWUBMarginBase
@property(nonatomic, strong)NSMutableArray *m_array;

- (instancetype) initWithArray:(NSMutableArray*)array;

@property(nonatomic, strong)CWUBCollectionFlowLayout *m_layout;

@end
