//
//  ColorfulWoodAlert.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2017/2/21.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "ColorfulWoodAlert.h"
#import <MBProgressHUD/MBProgressHUD.h>

//#define ColorfulWoodAlertKeyWindow [UIApplication sharedApplication].keyWindow
#define ColorfulWoodAlertKeyWindow [[[UIApplication sharedApplication] delegate] window]


@implementation ColorfulWoodAlert

#pragma mark - 单例
static ColorfulWoodAlert * share = nil;

+ (id)shareInstance {

    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{

        share = [[self alloc] init];

    });

    return share;
}

+ (void) showAlertWaitingNetwork{

    UIWindow * window = ColorfulWoodAlertKeyWindow;
    
    [ColorfulWoodAlert hidden];
    if (!window) {
        return;
    }

    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:ColorfulWoodAlertKeyWindow animated:YES];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    hud.mode = MBProgressHUDModeIndeterminate;
    
}


+ (void) showAlertAutoHideWithTitle:(NSString*)title afterDelay:(NSTimeInterval)delay{
    
    [ColorfulWoodAlert hidden];
    if (!ColorfulWoodAlertKeyWindow) {
        return;
    }

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
    if (!ColorfulWoodAlertKeyWindow) {
        return;
    }
    
    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:ColorfulWoodAlertKeyWindow animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    
    if (title) {
        
        hud.detailsLabel.text = title;
        hud.detailsLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:15.];
    }
}

+ (void) showAlertAutoHideWithTitle:(NSString*)title afterDelay:(NSTimeInterval)delay font:(UIFont*)font{

    [ColorfulWoodAlert hidden];
    if (!ColorfulWoodAlertKeyWindow) {
        return;
    }

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
    if (!ColorfulWoodAlertKeyWindow) {
        return;
    }


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
