//
//  UIImage+ColorfulWood.m
//  ColorfulWoodTools
//
//  Created by 大新 on 2018/9/10.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "UIImage+ColorfulWood.h"

@implementation UIImage (ColorfulWood)


/**
 * 对图片进行压缩
 * quality 是0~1之间的数字，代表图片质量
 */
- (NSData *)interface_scaleWithCompressionQuality:(CGFloat)quality{

    if (quality > 0 &&
        quality <= 1.0) {

    }else{

        quality = 1.0;
    }

    // 进行图像的画面质量压缩
    NSData *data = UIImageJPEGRepresentation(self, quality);


//    if (data.length > 100 * 1024) {
//        if (data.length > 1024 * 1024) {      // 1M以及以上
//
//            data = UIImageJPEGRepresentation(self, 0.7);
//        }else if (data.length > 512 * 1024) { // 0.5M-1M
//
//            data = UIImageJPEGRepresentation(self, 0.8);
//        }else if (data.length > 200 * 1024) { // 0.25M - 0.5M
//
//            data = UIImageJPEGRepresentation(self, 0.9);
//        }
//    }

    return data;
}

/**
 * 指定宽度按比例缩放
 */
- (UIImage *) interface_scaleWithWidth:(CGFloat)defineWidth{

    UIImage *newImage = nil;
    CGSize imageSize = self.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = defineWidth;
    CGFloat targetHeight = height / (width / targetWidth);
    CGSize size = CGSizeMake(targetWidth, targetHeight);
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0, 0.0);

    if(CGSizeEqualToSize(imageSize, size) == NO){

        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;

        if(widthFactor > heightFactor){
            scaleFactor = widthFactor;
        }
        else{
            scaleFactor = heightFactor;
        }
        scaledWidth = width * scaleFactor;
        scaledHeight = height * scaleFactor;

        if(widthFactor > heightFactor){

            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;

        }else if(widthFactor < heightFactor){

            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }

    UIGraphicsBeginImageContext(size);

    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width = scaledWidth;
    thumbnailRect.size.height = scaledHeight;

    [self drawInRect:thumbnailRect];

    newImage = UIGraphicsGetImageFromCurrentImageContext();

    if(newImage == nil){

        //        NSLog(@"scale image fail");
    }
    UIGraphicsEndImageContext();
    return newImage;
}

/**
 * 测试函数 放弃
 */
- (UIImage *)interface_zipScale{
    //进行图像尺寸的压缩
    CGSize imageSize = self.size;//取出要压缩的image尺寸
    CGFloat width = imageSize.width;    //图片宽度
    CGFloat height = imageSize.height;  //图片高度
    //1.宽高大于1280(宽高比不按照2来算，按照1来算)
    if (width > 1280 || height > 1280) {
        if (width > height) {
            CGFloat scale = height / width;
            width = 1280;
            height = width * scale;
        }else{
            CGFloat scale = width / height;
            height = 1280;
            width = height * scale;
        }
        // 2.宽大于1280高小于1280
    }else if(width > 1280 || height < 1280){
        CGFloat scale = height / width;
        width = 1280;
        height = width * scale;
        // 3.宽小于1280高大于1280
    }else if(width < 1280 || height > 1280){
        CGFloat scale = width / height;
        height = 1280;
        width = height * scale;
        // 4.宽高都小于1280
    }else{
    }
    // 进行尺寸重绘
    UIGraphicsBeginImageContext(CGSizeMake(width, height));
    [self drawInRect:CGRectMake(0, 0, width, height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end
