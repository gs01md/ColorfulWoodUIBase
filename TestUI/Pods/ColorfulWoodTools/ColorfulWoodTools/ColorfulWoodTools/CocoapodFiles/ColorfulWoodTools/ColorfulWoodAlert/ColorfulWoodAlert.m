//
//  ColorfulWoodAlert.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2017/2/21.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "ColorfulWoodAlert.h"
#import <MBProgressHUD/MBProgressHUD.h>

#define ColorfulWoodAlertKeyWindow [UIApplication sharedApplication].keyWindow

@implementation ColorfulWoodAlert

+ (void) showAlertWaitingNetwork{
    
    [ColorfulWoodAlert hidden];
    
    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:ColorfulWoodAlertKeyWindow animated:YES];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    hud.mode = MBProgressHUDModeIndeterminate;
    
}


+ (void) showAlertAutoHideWithTitle:(NSString*)title afterDelay:(NSTimeInterval)delay{
    
    [ColorfulWoodAlert hidden];
    
    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:ColorfulWoodAlertKeyWindow animated:YES];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    hud.mode = MBProgressHUDModeText;
    
    if (title) {
        
        hud.detailsLabel.text = title;
        hud.detailsLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:15.];
    }
    
    
    //[hud hide:YES afterDelay:delay];
    [hud hideAnimated:YES afterDelay:delay];
    
}

/**
 * 隐藏需要调用 + (void) hidden
 */
+ (void) showAlertWithTitle:(NSString*)title{
    
    [ColorfulWoodAlert hidden];
    
    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:ColorfulWoodAlertKeyWindow animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    
    if (title) {
        
        hud.detailsLabel.text = title;
        hud.detailsLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:15.];
    }
}

+ (void) showAlertAutoHideWithTitle:(NSString*)title afterDelay:(NSTimeInterval)delay font:(UIFont*)font{

    [ColorfulWoodAlert hidden];

    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:ColorfulWoodAlertKeyWindow animated:YES];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    hud.mode = MBProgressHUDModeText;

    if (title) {

        hud.detailsLabel.text = title;

        if (font) {
            hud.detailsLabel.font = font;
        } else {
            hud.detailsLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:15.];
        }

    }


    //[hud hide:YES afterDelay:delay];
    [hud hideAnimated:YES afterDelay:delay];

}

/**
 * 隐藏需要调用 + (void) hidden
 */
+ (void) showAlertWithTitle:(NSString*)title font:(UIFont*)font{

    [ColorfulWoodAlert hidden];

    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:ColorfulWoodAlertKeyWindow animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;

    if (title) {

        hud.detailsLabel.text = title;
        
        if (font) {
            hud.detailsLabel.font = font;
        } else {
            hud.detailsLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:15.];
        }
    }
}

+ (void) hidden{
    
    //[MBProgressHUD hideAllHUDsForView:ColorfulWoodAlertKeyWindow animated:YES];
    [MBProgressHUD hideHUDForView:ColorfulWoodAlertKeyWindow animated:YES];
}

@end
