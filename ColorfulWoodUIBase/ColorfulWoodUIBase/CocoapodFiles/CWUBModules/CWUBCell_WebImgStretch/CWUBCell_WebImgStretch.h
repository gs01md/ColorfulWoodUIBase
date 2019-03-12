//
//  CWUBCell_WebImgStretch.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/26.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellBase.h"
#import "CWUBCell_WebImgStretch_Model.h"

@protocol CWUBCell_WebImgStretchDelegate<NSObject>
@optional
- (void)CWUBCell_WebImgStretchDelegate_updateLayout:(int)row;
- (void)CWUBCell_WebImgStretchDelegate_updateLayout:(int)row height:(float)height;
- (void)CWUBCell_WebImgStretchDelegate_updateLayoutWithheight:(float)height;
@end

@interface CWUBCell_WebImgStretch : CWUBCellBase
@property (nonatomic, strong) CWUBCell_WebImgStretch_Model * m_model;
@property (nonatomic, weak) id<CWUBCell_WebImgStretchDelegate>delegate;

@end
