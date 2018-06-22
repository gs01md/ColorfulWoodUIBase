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
-(instancetype) initWithModel:(CWUBImageInfo*)info;
-(void) interface_update:(CWUBImageInfo*)info;
@end
