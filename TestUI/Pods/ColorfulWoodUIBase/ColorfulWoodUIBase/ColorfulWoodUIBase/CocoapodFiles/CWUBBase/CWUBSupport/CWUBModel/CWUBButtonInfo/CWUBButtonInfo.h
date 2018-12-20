//
//  CWUBButtonInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/3/19.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIkit.h>
#import "CWUBMarginBase.h"

@interface CWUBButtonInfo : CWUBMarginBase
@property(nonatomic,strong) NSString* m_text;
@property(nonatomic,strong) UIFont* m_font;
@property(nonatomic,strong) UIColor* m_color;

@property(nonatomic,strong) UIColor* m_backgroundColor;

-(instancetype) initWithText:(NSString*)text font:(UIFont*)font color:(UIColor*)color background:(UIColor*)backgroundColor;
@end
