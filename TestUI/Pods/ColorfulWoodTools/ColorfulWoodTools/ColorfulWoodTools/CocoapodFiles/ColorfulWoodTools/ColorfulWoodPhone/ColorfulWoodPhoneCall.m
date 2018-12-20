//
//  ColorfulWoodPhoneCall.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/8/23.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "ColorfulWoodPhoneCall.h"
#import <UIKit/UIKit.h>

@implementation ColorfulWoodPhoneCall
+ (BOOL)interface_callPhone:(NSString*)phone{

    BOOL bSuccess = FALSE;
    if (phone) {

        //直接打电话
        NSString *callPhone = [NSString stringWithFormat:@"telprompt://%@",phone];

        if (@available(iOS 10.0, *)) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:callPhone] options:@{} completionHandler:nil];
        } else {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:callPhone]];
        }

        bSuccess = TRUE;

    }

    return bSuccess;

}
@end
