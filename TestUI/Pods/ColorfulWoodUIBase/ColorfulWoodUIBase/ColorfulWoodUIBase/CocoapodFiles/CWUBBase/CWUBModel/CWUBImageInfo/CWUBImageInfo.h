//
//  CWUBImageInfo.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWUBImageInfo : NSObject
@property(nonatomic,strong) NSString* m_imgName;
@property(nonatomic,assign) float m_width;
@property(nonatomic,assign) float m_height;

- (instancetype) initWithName:(NSString*)name width:(float)width height:(float)height;
@end
