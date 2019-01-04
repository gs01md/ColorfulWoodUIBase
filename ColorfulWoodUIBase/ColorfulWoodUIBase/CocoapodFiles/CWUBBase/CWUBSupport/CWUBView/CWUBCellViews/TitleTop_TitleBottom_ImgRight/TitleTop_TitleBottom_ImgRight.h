//
//  TitleTop_TitleBottom_ImgRight.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/30.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBCellViewBase.h"
#import "TitleTop_TitleBottom_ImgRight_Model.h"

@protocol TitleTop_TitleBottom_ImgRight_Delegate <NSObject>
@optional
/**
 * code 代表该项标签
 */
- (void)TitleTop_TitleBottom_ImgRight_Delegate_clickWithCode:(NSString*)code;

@end

@interface TitleTop_TitleBottom_ImgRight : CWUBCellViewBase

@property(nonatomic, weak) id<TitleTop_TitleBottom_ImgRight_Delegate> delegate;
@end
