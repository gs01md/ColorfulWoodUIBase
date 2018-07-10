//
//  CWUBCell_Collection_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/29.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_CollectionTop_TitleBottom_Model.h"

@implementation CWUBCell_CollectionTop_TitleBottom_Model
- (CWUBTextInfo*) m_title_bottom{

    if (!_m_title_bottom) {
        _m_title_bottom = [CWUBTextInfo new];
    }

    return _m_title_bottom;
}

- (CWUBCollectionInfo*) m_collection_top{

    if (!_m_collection_top) {
        _m_collection_top = [CWUBCollectionInfo new];
    }

    return _m_collection_top;
}


@end
