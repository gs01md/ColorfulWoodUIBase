//
//  CWUBViewModelBase.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWUBTextInfo.h"
#import "CWUBDefine.h"
#import "CWUBImageInfo.h"
#import "CWUBBottomLineInfo.h"
#import "CWUBCollectionInfo.h"
#import "CWUBModel.h"

@interface CWUBViewModelBase : NSObject

@property(nonatomic, strong)CWUBModel *m_model;

/**
 * 获取TableView显示的模型
 */
- (CWUBModel*)interface_getShowModel;
@end
