//
//  CWUBTextfieldWithModel.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/16.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWUBTextInfo.h"

@interface CWUBTextfieldWithModel : UITextField
-(instancetype) initWithModel:(CWUBTextInfo*)info;
-(void) interface_update:(CWUBTextInfo*)info;
@end
