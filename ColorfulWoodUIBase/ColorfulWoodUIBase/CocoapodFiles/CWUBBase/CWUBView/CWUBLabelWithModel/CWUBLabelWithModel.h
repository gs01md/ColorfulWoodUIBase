//
//  CWUBLabelWithModel.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/15.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBTextInfo.h"
#import <ColorfulWoodCategories/NSString+ColorfulWoodSize.h>

@interface CWUBLabelWithModel : UILabel
@property(nonatomic, strong)CWUBTextInfo* m_model;
-(instancetype) initWithModel:(CWUBTextInfo*)model;
-(void) interface_update:(CWUBTextInfo*)model;
@end
