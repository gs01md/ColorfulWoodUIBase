//
//  CWUBSelectImg.h
//  FangShiLiu
//
//  Created by 大新 on 2018/12/8.
//  Copyright © 2018年 MAC. All rights reserved.
//

#import "CWUBSelectImg.h"
#import <AVFoundation/AVFoundation.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <ColorfulWoodTools/ColorfulWoodAlert.h>
#import "CWUBDefine.h"

@interface CWUBSelectImg ()

@property (nonatomic, weak)UIImage *img;
@property (nonatomic, strong)UIImageView *imgView;     // 背景图

@property (nonatomic, strong)UIButton *backBtn;    // 返回按钮

@property (nonatomic, strong)UIView *bgView;           // 相机、相册背景
@property (nonatomic, strong)UIButton *cameraBtn;      // 相机
@property (nonatomic, strong)UIView *lineView;         // 线
@property (nonatomic, strong)UIButton *photoBtn;       // 相册
@property (nonatomic, strong)UIButton *cancelBtn;      // 取消

@property (nonatomic, strong)UIImagePickerController *imgPicker;

@end

@implementation CWUBSelectImg

- (instancetype)initWithFrame:(CGRect)frame withBgImg:(UIImage *)img
{
    if (self = [super initWithFrame:frame]) {
        
        self.img = img;
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.85];
    [self addSubview:self.backBtn];
    
    [self addSubview:self.imgView];
    
    [self addSubview:self.cancelBtn];
    [self addSubview:self.bgView];
}

- (void)clickBack
{
    [self removeFromSuperview];
}

- (void)clickCancelBtn
{
    [self removeFromSuperview];
}

- (void)clickCameraBtn
{
    NSLog(@"点击了相机");
    if (![CWUBSelectImg interface_usableCamera]) {
        return;
    }
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    if (self.ClickCameraBlock) {
        self.ClickCameraBlock(self.imgPicker);
    }
}

- (void)clickPhotoBtn
{
    NSLog(@"点击了手机相册");
    if (![CWUBSelectImg interface_usablePhoto]) {
        return;
    }
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    if (self.ClickPhotoBlock) {
        self.ClickPhotoBlock(self.imgPicker);
    }
}

// 相机是否可用
+ (BOOL)interface_usableCamera
{
    NSString *mediaType = AVMediaTypeVideo;//读取媒体类型
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];//读取设备授权状态
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
        
        [ColorfulWoodAlert showAlertAutoHideWithTitle:@"请在iPhone的“设置-隐私-相机”选项中，允许访问你的相机。" afterDelay:2.];
        return NO;
    }else {
        return YES;
    }
}

// 相册是否可用
+ (BOOL)interface_usablePhoto
{
    ALAuthorizationStatus author = [ALAssetsLibrary authorizationStatus];
    
    if(author == ALAuthorizationStatusRestricted || author == ALAuthorizationStatusDenied){ //无权限
        [ColorfulWoodAlert showAlertAutoHideWithTitle:@"请在iPhone的“设置-隐私-相机”选项中，允许访问你的相机。" afterDelay:2.];
        return NO;
    }else {
        return YES;
    }
}

#pragma mark - 懒加载
- (UIButton *)backBtn
{
    if (!_backBtn) {
        UIImage *img = [UIImage imageNamed:@"人脉-名片查看返回"];
        _backBtn = [[UIButton alloc] initWithFrame:CGRectMake(CWUBDefine_Width(15), CWUBBDefine_Height_StatusBar + (44 - img.size.height) / 2, img.size.width, img.size.height)];
        [_backBtn setImage:img forState:UIControlStateNormal];
        _backBtn.adjustsImageWhenHighlighted = NO;
        [_backBtn addTarget:self action:@selector(clickBack) forControlEvents:UIControlEventTouchUpInside];
    }
    return _backBtn;
}

- (UIImageView *)imgView
{
    if (!_imgView) {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake((CWUBDefineDeviceWidth - self.img.size.width) / 2, CWUBBDefine_Height_StatusBar + 44 + CWUBDefine_Width(5), self.img.size.width, self.img.size.height)];
        _imgView.image = self.img;
        _imgView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _imgView;
}

- (UIButton *)cancelBtn
{
    if (!_cancelBtn) {
        _cancelBtn = [[UIButton alloc] initWithFrame:CGRectMake(CWUBDefine_Width(15), CWUBDefineDeviceHeight - CWUBDefine_Width(16) - CWUBDefine_Width(44), CWUBDefineDeviceWidth - CWUBDefine_Width(30), CWUBDefine_Width(44))];
        _cancelBtn.layer.cornerRadius = CWUBDefine_Width(8);
        _cancelBtn.layer.masksToBounds = YES;
        [_cancelBtn setBackgroundColor:[UIColor whiteColor]];
        _cancelBtn.titleLabel.font = CWUBDefine_Font_Regular_Size(16);
        [_cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:CWUBDefineCreate_ColorRGB(0x333333) forState:UIControlStateNormal];
        [_cancelBtn addTarget:self action:@selector(clickCancelBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cancelBtn;
}

- (UIView *)bgView
{
    if (!_bgView) {
        _bgView = [[UIView alloc] initWithFrame:CGRectMake(CWUBDefine_Width(15), CGRectGetMinY(self.cancelBtn.frame) - CWUBDefine_Width(10) - CWUBDefine_Width(88) - 1, self.cancelBtn.frame.size.width, CWUBDefine_Width(88) + 1)];
        _bgView.layer.cornerRadius = CWUBDefine_Width(8);
        _bgView.layer.masksToBounds = YES;
        
        [_bgView addSubview:self.cameraBtn];
        [_bgView addSubview:self.lineView];
        [_bgView addSubview:self.photoBtn];
    }
    return _bgView;
}

- (UIButton *)cameraBtn
{
    if (!_cameraBtn) {
        _cameraBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.bgView.frame.size.width, CWUBDefine_Width(44))];
        [_cameraBtn setBackgroundColor:[UIColor whiteColor]];
        _cameraBtn.titleLabel.font = CWUBDefine_Font_Regular_Size(16);
        [_cameraBtn setTitle:@"相机" forState:UIControlStateNormal];
        [_cameraBtn setTitleColor:CWUBDefineCreate_ColorRGB(0x333333) forState:UIControlStateNormal];
        [_cameraBtn addTarget:self action:@selector(clickCameraBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cameraBtn;
}

- (UIView *)lineView
{
    if (!_lineView) {
        _lineView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.cameraBtn.frame), self.cancelBtn.frame.size.width, 1)];
        _lineView.backgroundColor = CWUBDefineCreate_ColorRGB(0xcccccc);
    }
    return _lineView;
}

- (UIButton *)photoBtn
{
    if (!_photoBtn) {
        _photoBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.lineView.frame), self.cancelBtn.frame.size.width, self.cancelBtn.frame.size.height)];
        [_photoBtn setBackgroundColor:[UIColor whiteColor]];
        _photoBtn.titleLabel.font = CWUBDefine_Font_Regular_Size(16);
        [_photoBtn setTitle:@"从手机相册选择" forState:UIControlStateNormal];
        [_photoBtn setTitleColor:CWUBDefineCreate_ColorRGB(0x333333) forState:UIControlStateNormal];
        [_photoBtn addTarget:self action:@selector(clickPhotoBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _photoBtn;
}

- (UIImagePickerController *)imgPicker
{
    if (!_imgPicker) {
        _imgPicker = [[UIImagePickerController alloc] init];
        _imgPicker.allowsEditing = YES;
        _imgPicker.editing = YES;
    }
    return _imgPicker;
}

- (void)interface_img:(NSString*)img{

    if (img) {
        self.img = [UIImage imageNamed: img];
    }
    self.imgView.image = self.img;
}

@end
