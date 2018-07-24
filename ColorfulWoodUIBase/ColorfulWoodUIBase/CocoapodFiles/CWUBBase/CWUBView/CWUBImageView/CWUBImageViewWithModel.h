//
//  CWUBImageViewWithModel.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/22.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBImageInfo.h"

@interface CWUBImageViewWithModel : UIImageView

@property(nonatomic, strong)CWUBImageInfo *m_model;

-(instancetype) initWithModel:(CWUBImageInfo*)model;
-(void) interface_update:(CWUBImageInfo*)model;

@end
