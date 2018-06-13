//
//  CWUBCornerInfo.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/6/11.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCornerInfo.h"

@implementation CWUBCornerInfo

/**
 * 生成信息
 */
+ (CWUBCornerInfo*)interface_initWithRadius:(float)radius width:(float)width color:(UIColor*)color{

    CWUBCornerInfo *info = [CWUBCornerInfo new];
    info.m_cornerRadius = radius>0.?radius:0.;
    info.m_cornerColor = color;
    info.m_cornerWidth = width>0.?width:0.;

    return info;
}

- (UIColor*)m_cornerColor{

    if (!_m_cornerColor){
        _m_cornerColor = [UIColor clearColor];
    }

    return _m_cornerColor;
}

@end
