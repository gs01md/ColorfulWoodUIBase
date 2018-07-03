//
//  CWUBCell_TitleLeft_CollectionRight_ImgRight_Model.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/18.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCell_TitleLeft_CollectionRight_ImgRight_Model.h"

@implementation CWUBCell_TitleLeft_CollectionRight_ImgRight_Model

- (CWUBTextInfo*) m_title_left{

    if (!_m_title_left) {
        _m_title_left = [CWUBTextInfo new];
    }

    return _m_title_left;
}

- (CWUBTextInfo*) m_title_right{

    if (!_m_title_right) {
        _m_title_right = [CWUBTextInfo new];
    }

    return _m_title_right;
}

- (CWUBTextInfo*) m_title_rightBottom{

    if (!_m_title_rightBottom) {
        _m_title_rightBottom = [CWUBTextInfo new];
    }

    return _m_title_rightBottom;
}

- (CWUBCollectionInfo*) m_collection_right{

    if (!_m_collection_right) {
        _m_collection_right = [CWUBCollectionInfo new];
    }

    return _m_collection_right;
}

- (CWUBImageInfo*) m_img_right{

    if (!_m_img_right) {
        _m_img_right = [CWUBImageInfo new];
    }

    return _m_img_right;
}

- (CWUBCollectionFlowLayout*) m_layout{

    if (!_m_layout) {
        _m_layout = [CWUBCollectionFlowLayout new];
        _m_layout.m_cellType = CWUBCollectionFlowLayoutType_Default;
        //layout.estimatedItemSize = CGSizeMake(width, 200);
        _m_layout.minimumLineSpacing = 15.;
        _m_layout.minimumInteritemSpacing= 15.;
        _m_layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    }

    return _m_layout;
}

@end
