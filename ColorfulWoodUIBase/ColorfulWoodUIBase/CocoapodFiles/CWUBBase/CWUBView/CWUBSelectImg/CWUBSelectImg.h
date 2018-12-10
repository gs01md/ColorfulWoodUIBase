//
//  CWUBSelectImg.h
//  FangShiLiu
//
//  Created by 大新 on 2018/12/8.
//  Copyright © 2018年 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CWUBSelectImg : UIView

- (instancetype)initWithFrame:(CGRect)frame withBgImg:(UIImage *)img;
- (void)clickBack;

@property (nonatomic, copy)void (^ClickPhotoBlock)(UIImagePickerController *imgPicker);
@property (nonatomic, copy)void (^ClickCameraBlock)(UIImagePickerController *imgPicker);

- (void)interface_img:(NSString*)img;
@end
