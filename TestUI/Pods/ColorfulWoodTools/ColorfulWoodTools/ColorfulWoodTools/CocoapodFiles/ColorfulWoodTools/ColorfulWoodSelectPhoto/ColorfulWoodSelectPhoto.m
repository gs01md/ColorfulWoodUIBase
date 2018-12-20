//
//  ColorfulWoodSelectPhoto.m
//  ColorfulWoodTools
//  请使用三方库 TZImagePickerController
//  Created by 大新 on 2017/3/21.
//  Copyright © 2017年 ColorfulWood. All rights reserved.
//

#import "ColorfulWoodSelectPhoto.h"
#import "ColorfullWoodToolDefine.h"
#import <Photos/PHPhotoLibrary.h>
#import <AVFoundation/AVFoundation.h>
#import "ColorfulWoodAlert.h"

@interface ColorfulWoodSelectPhoto()<
UIImagePickerControllerDelegate,
UINavigationControllerDelegate,
UIActionSheetDelegate
>{

}

@property(nonatomic, weak)UIAlertController* m_alertCtl;

@property(nonatomic, weak)UIViewController* m_viewController;

@end


@implementation ColorfulWoodSelectPhoto
#pragma mark - 点击头像


/**
 *  点击头像
 *
 *  @param viewController 显示视图
 */
- (instancetype)initWithController:(UIViewController*)viewController{
    
    if (self = [super init]) {
        self.m_viewController = viewController;
    }
    
    return self;

}

- (void)interface_show{

    if ([self func_check]) {
        [self interface_showAfterCheck];
    } else {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:@"请在iPhone的“设置-隐私-相机”选项中，允许方石榴访问你的相机。" preferredStyle:UIAlertControllerStyleAlert];
        [alertVC addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];
        [self.m_viewController presentViewController:alertVC animated:YES completion:nil];
    }
}

- (void)interface_showAfterCheck{

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

    // 跳转到相机或相册页面
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.navigationController.delegate=self;
    imagePickerController.delegate = self;
    imagePickerController.allowsEditing = YES;

    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {

        UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

            imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;

            [self.m_viewController presentViewController:imagePickerController animated:YES completion:^{
            }];

        }];
        [alert addAction:action1];

        UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"从手机相册选择" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

            imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;

            [self.m_viewController presentViewController:imagePickerController animated:YES completion:^{
            }];

        }];
        [alert addAction:action2];

        UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        [alert addAction:action3];


    } else {

        UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"使用相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

            imagePickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;

            [self.m_viewController presentViewController:imagePickerController animated:YES completion:^{
            }];
        }];
        [alert addAction:action2];

        UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        }];
        [alert addAction:action3];
    }

    if (alert) {
        [self.m_viewController presentViewController:alert animated:YES completion:nil];
    }
}

- (BOOL)func_check{

    NSString *mediaType = AVMediaTypeVideo;
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    if (authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
        return NO;
    } else {
        return YES;
    }
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    [UIApplication sharedApplication].statusBarHidden=NO;
}

#pragma mark - image picker delegte
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    __weak ColorfulWoodSelectPhoto *weakSelf = self;
    [picker dismissViewControllerAnimated:YES completion:^{
        
         __strong ColorfulWoodSelectPhoto *strongSelf = weakSelf;
        
        UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
        if (image.size.width!=image.size.height)
        {
            image=[strongSelf handleImage:image withSize:CGSizeMake(MIN(image.size.height, image.size.width), MIN(image.size.height, image.size.width))];
        }
        
        if ([strongSelf.delegate respondsToSelector:@selector(ColorfulWoodSelectPhotoDelegate_success:)]) {
            
            [strongSelf.delegate ColorfulWoodSelectPhotoDelegate_success:image];
        }
        
        
    }];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (UIImage *)handleImage:(UIImage *)originalImage withSize:(CGSize)size{
    
    CGSize originalsize = [originalImage size];
    NSLog(@"改变前图片的宽度为%f,图片的高度为%f",originalsize.width,originalsize.height);
    
    //原图长宽均小于标准长宽的，不作处理返回原图
    if (originalsize.width<size.width && originalsize.height<size.height)
    {
        return originalImage;
    }
    
    //原图长宽均大于标准长宽的，按比例缩小至最大适应值
    else if(originalsize.width>size.width && originalsize.height>size.height){
        
        CGFloat rate = 1.0;
        CGFloat widthRate = originalsize.width/size.width;
        CGFloat heightRate = originalsize.height/size.height;
        
        rate = widthRate>heightRate?heightRate:widthRate;
        
        CGImageRef imageRef = nil;
        
        if (heightRate>widthRate){
            
            imageRef = CGImageCreateWithImageInRect([originalImage CGImage], CGRectMake(0, originalsize.height/2-size.height*rate/2, originalsize.width, size.height*rate));//获取图片整体部分
        }
        else
        {
            imageRef = CGImageCreateWithImageInRect([originalImage CGImage], CGRectMake(originalsize.width/2-size.width*rate/2, 0, size.width*rate, originalsize.height));//获取图片整体部分
        }
        UIGraphicsBeginImageContext(size);//指定要绘画图片的大小
        CGContextRef con = UIGraphicsGetCurrentContext();
        
        CGContextTranslateCTM(con, 0.0, size.height);
        CGContextScaleCTM(con, 1.0, -1.0);
        
        CGContextDrawImage(con, CGRectMake(0, 0, size.width, size.height), imageRef);
        
        UIImage *standardImage = UIGraphicsGetImageFromCurrentImageContext();
        NSLog(@"改变后图片的宽度为%f,图片的高度为%f",[standardImage size].width,[standardImage size].height);
        
        UIGraphicsEndImageContext();
        CGImageRelease(imageRef);
        
        return standardImage;
    }
    
    //原图长宽有一项大于标准长宽的，对大于标准的那一项进行裁剪，另一项保持不变
    else if(originalsize.height>size.height || originalsize.width>size.width)
    {
        CGImageRef imageRef = nil;
        
        if(originalsize.height>size.height)
        {
            imageRef = CGImageCreateWithImageInRect([originalImage CGImage], CGRectMake(0, originalsize.height/2-size.height/2, originalsize.width, size.height));//获取图片整体部分
        }
        else if (originalsize.width>size.width)
        {
            imageRef = CGImageCreateWithImageInRect([originalImage CGImage], CGRectMake(originalsize.width/2-size.width/2, 0, size.width, originalsize.height));//获取图片整体部分
        }
        
        UIGraphicsBeginImageContext(size);//指定要绘画图片的大小
        CGContextRef con = UIGraphicsGetCurrentContext();
        
        CGContextTranslateCTM(con, 0.0, size.height);
        CGContextScaleCTM(con, 1.0, -1.0);
        
        CGContextDrawImage(con, CGRectMake(0, 0, size.width, size.height), imageRef);
        
        UIImage *standardImage = UIGraphicsGetImageFromCurrentImageContext();
        NSLog(@"改变后图片的宽度为%f,图片的高度为%f",[standardImage size].width,[standardImage size].height);
        
        UIGraphicsEndImageContext();
        CGImageRelease(imageRef);
        
        return standardImage;
    }
    
    //原图为标准长宽的，不做处理
    else
    {
        return originalImage;
    }
}

#pragma mark - 属性

- (UIAlertController*)m_alertCtl {

    if (!_m_alertCtl) {
        _m_alertCtl = [UIAlertController alertControllerWithTitle:@"" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    }

    return _m_alertCtl;
}
@end
