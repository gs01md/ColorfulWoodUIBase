//
//  CWUBUITapGestureRecognizer.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2019/1/7.
//  Copyright © 2019 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWUBUITapGestureRecognizer : UITapGestureRecognizer
/**
 * 操作标识，用于区分不同的操作
 */
@property(nonatomic, strong)NSString *m_event_opt_code;
@end

NS_ASSUME_NONNULL_END
