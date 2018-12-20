//
//  NSDictionary+BmobCheckResult.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2017/2/22.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "NSDictionary+BmobCheckResult.h"

@implementation BmobError @end

@implementation NSDictionary (BmobCheckResult)

+ (BmobError*) checkWithBmobDic:(NSDictionary*)object{
    
    BmobError * bmobError = [BmobError new];
    bmobError.m_strError = nil;
    bmobError.m_code = BmobErrorType_Success;
    
    NSDictionary * dic = object;
    
    if (dic) {
        
        if ([dic objectForKey:@"code"] &&
            [dic objectForKey:@"error"]) {
            
            NSString * strCode =  [dic objectForKey:@"code"];
            strCode = strCode?strCode:@"";
            
            bmobError.m_code = [strCode intValue];
            bmobError.m_strError = [dic objectForKey:@"error"];
        }
        
    }else{
        
        bmobError.m_code = BmobErrorType_DataNull;
    }

    
    return bmobError;
}
@end
