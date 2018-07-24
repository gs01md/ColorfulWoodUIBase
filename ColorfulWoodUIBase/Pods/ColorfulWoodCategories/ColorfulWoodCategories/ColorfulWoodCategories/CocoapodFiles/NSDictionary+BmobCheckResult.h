//
//  NSDictionary+BmobCheckResult.h
//  ColorfulWoodTools
//  检验Bmob网络连接的返回值
//  Created by 大新 on 2017/2/22.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    /**
     * 成功
     */
    BmobErrorType_Success = 200,
    
    /**
     * 数据为空
     */
    BmobErrorType_DataNull,

    
}BmobErrorType;

@interface BmobError : NSObject

@property (nonatomic, assign) int m_code;

@property (nonatomic, strong) NSString * m_strError;

@end

@interface NSDictionary (BmobCheckResult)

+ (BmobError*) checkWithBmobDic:(NSDictionary*)object;

@end
