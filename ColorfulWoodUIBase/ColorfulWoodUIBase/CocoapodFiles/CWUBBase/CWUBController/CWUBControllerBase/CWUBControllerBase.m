//
//  CWUBControllerBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/9/6.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBControllerBase.h"
#import <Masonry/Masonry.h>
#import "CWUBDefine.h"
#import "CWUBDefaultView.h"
#import <ColorfulWoodTools/ColorfulWoodAlert.h>
#import <IQKeyboardManager/IQKeyboardManager.h>

@interface CWUBControllerBase ()<
RITLPhotosViewControllerDelegate
>

/**
 * 是否添加了导航栏，用于tableview布局
 */
@property(nonatomic, assign)BOOL m_isNaviBarShow;

//@property(nonatomic, strong)UIImage * m_image;
@end

static UIImage * m_image;

@implementation CWUBControllerBase

- (void)viewDidLoad {
    [super viewDidLoad];

    //清空默认选中图片
    self.m_photoController.defaultIdentifers = [NSArray new];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
    if (@available(iOS 11.0, *)){
        [[UIScrollView appearance] setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    }

    /**
     * 支持左侧滑动返回
     */
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;

    if (!m_image) {
        m_image = CWUBBDefine_bundle_pngImg(@"CWUBBundle_Back@2x");
    }

    [self func_configKeyboard];

}

- (void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];

    //    UITableView.appearance.estimatedRowHeight = 200;
    //    UITableView.appearance.estimatedSectionFooterHeight = 0;
    //    UITableView.appearance.estimatedSectionHeaderHeight = 0;

    [self.navigationController setNavigationBarHidden:YES];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}


#pragma mark - 配制键盘
- (void)func_configKeyboard{

    IQKeyboardManager *keyboardManager = [IQKeyboardManager sharedManager]; // 获取类库的单例变量
    keyboardManager.enable = YES; // 控制整个功能是否启用
    keyboardManager.shouldResignOnTouchOutside = YES; // 控制点击背景是否收起键盘
    keyboardManager.enableAutoToolbar = NO; // 控制是否显示键盘上的工具条
}

#pragma mark - tableView

- (UITableView*)m_tableView{

    if (!_m_tableView) {

        _m_tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _m_tableView.dataSource = self;
        _m_tableView.delegate = self;
        _m_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _m_tableView.estimatedRowHeight = 50;
        _m_tableView.rowHeight = UITableViewAutomaticDimension;
        _m_tableView.backgroundView = self.m_defaultView;
        _m_tableView.allowsSelection = YES;
        _m_tableView.backgroundColor = [UIColor whiteColor];
        _m_tableView.showsHorizontalScrollIndicator = NO;
        _m_tableView.showsVerticalScrollIndicator = NO;
    }

    return _m_tableView;
}

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 * hasTabbar: 是否留有下部tabbar
 */
- (void)interface_addTableViewHasTabbar:(BOOL)hasTabbar{

    [self.view addSubview:self.m_tableView];
    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {

        if (self.m_isNaviBarShow) {

            make.top.equalTo(self.m_navigationBar.mas_bottom);

        } else {

            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.top.equalTo(self.view).offset(44);
            } else {
                make.top.equalTo(self.view).offset(22);
            }

        }

        if (hasTabbar) {
            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-84.);
            } else {
                make.bottom.equalTo(self.view).offset(-49.);
            }
        } else {
            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-35.);
            } else {
                make.bottom.equalTo(self.view);
            }
        }

        make.left.equalTo(self.view);
        make.right.equalTo(self.view);


    }];



    //[self.m_defaultNoNetView interface_updateImg:@"FSL_Default_无网络" title:@"请检查您的网络"];
}

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 */
- (void)interface_addTableViewWithTop:(float)top hasTabbar:(BOOL)hasTabbar{

    [self.view addSubview:self.m_tableView];
    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {

        if (self.m_isNaviBarShow) {
            make.top.equalTo(self.m_navigationBar.mas_bottom).offset(top);
        } else {
            make.top.equalTo(self.view).offset(top);
        }

        if (hasTabbar) {
            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-84.);
            } else {
                make.bottom.equalTo(self.view).offset(-49.);
            }
        } else {

            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-35.);
            } else {
                make.bottom.equalTo(self.view);
            }
        }

        make.left.equalTo(self.view);
        make.right.equalTo(self.view);

    }];
}

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 * lr 左右边距
 */
- (void)interface_addTableViewWithTop:(float)top lrSize:(float)lr hasTabbar:(BOOL)hasTabbar{

    [self.view addSubview:self.m_tableView];

    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {

        if (self.m_isNaviBarShow) {
            make.top.equalTo(self.m_navigationBar.mas_bottom).offset(top);
        } else {
            make.top.equalTo(self.view).offset(top);
        }

        if (hasTabbar) {
            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-84.);
            } else {
                make.bottom.equalTo(self.view).offset(-49.);
            }
        } else {

            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-35.);
            } else {
                make.bottom.equalTo(self.view);
            }
        }
        //        make.left.equalTo(self);
        //        make.right.equalTo(self);
        make.left.equalTo(self.view).offset(lr);
        make.right.equalTo(self.view).offset(-lr);

    }];
}

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 * left 左边距
 * right 右边距
 */
- (void)interface_addTableViewWithTop:(float)top left:(float)left right:(float)right hasTabbar:(BOOL)hasTabbar{

    [self.view addSubview:self.m_tableView];
    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {



        if (self.m_isNaviBarShow) {
            make.top.equalTo(self.m_navigationBar.mas_bottom).offset(top);
        } else {
            make.top.equalTo(self.view).offset(top);
        }

        if (hasTabbar) {
            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-84.);
            } else {
                make.bottom.equalTo(self.view).offset(-49.);
            }
        } else {

            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-35.);
            } else {
                make.bottom.equalTo(self.view);
            }
        }
        //        make.left.equalTo(self);
        //        make.right.equalTo(self);
        make.left.equalTo(self.view).offset(left);
        make.right.equalTo(self.view).offset(-right);

    }];
}


/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 */
- (void)interface_addTableViewWithTop:(float)top hasTabbar:(BOOL)hasTabbar hasNavi:(BOOL)hasNavi{

    self.m_isNaviBarShow = hasNavi;

    [self.view addSubview:self.m_tableView];
    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {

        if (self.m_isNaviBarShow) {
            make.top.equalTo(self.m_navigationBar.mas_bottom).offset(top);
        } else {
            make.top.equalTo(self.view).offset(top);
        }

        if (hasTabbar) {
            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-84.);
            } else {
                make.bottom.equalTo(self.view).offset(-49.);
            }
        } else {

            if ([ColorfulWoodNavigationBar isIPhoneX]) {
                make.bottom.equalTo(self.view).offset(-35.);
            } else {
                make.bottom.equalTo(self.view);
            }
        }

        make.left.equalTo(self.view);
        make.right.equalTo(self.view);

    }];
}
#pragma mark - 弹框提示
- (void)showAlertControllerMessage:(NSString *)message{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *determineAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alertController addAction:determineAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
#pragma mark - 导航栏

- (ColorfulWoodNavigationBar *)m_navigationBar{
    if (!_m_navigationBar) {
        _m_navigationBar = [ColorfulWoodNavigationBar CustomNavigationBar];
        [_m_navigationBar cw_setBottomLineHidden:YES];
        _m_navigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:17];
        _m_navigationBar.titleLabelColor = CWUBDefineCreate_ColorRGB(0X1A1A1A);
        _m_navigationBar.backgroundColor = [UIColor whiteColor];
    }
    return _m_navigationBar;

}

- (UILabel*)m_lbl_naviLeft{

    if (!_m_lbl_naviLeft) {

        _m_lbl_naviLeft = [UILabel new];
        _m_lbl_naviLeft.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:14];
        _m_lbl_naviLeft.textColor = CWUBDefineCreate_ColorRGB(0x999999);
        _m_lbl_naviLeft.text = @"";
        _m_lbl_naviLeft.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onEvent_naviabelLeft)];

        [_m_lbl_naviLeft addGestureRecognizer:tap];
    }

    return _m_lbl_naviLeft;
}

- (UILabel*)m_lbl_naviRight{

    if (!_m_lbl_naviRight) {

        _m_lbl_naviRight = [UILabel new];
        _m_lbl_naviRight.font = [UIFont fontWithName:@"PingFang-SC-Medium" size:14];
        _m_lbl_naviRight.textColor = CWUBDefineCreate_ColorRGB(0xFF6634);
        _m_lbl_naviRight.text = @"";
        _m_lbl_naviRight.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onEvent_naviLabelRight)];

        [_m_lbl_naviRight addGestureRecognizer:tap];
    }

    return _m_lbl_naviRight;
}

/**
 * 导航栏左侧Label返回事件
 */
- (void)onEvent_naviabelLeft{
    [self.navigationController popViewControllerAnimated:YES];
}

/**
 * 导航栏右侧Label返回事件
 */
- (void)onEvent_naviLabelRight{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark  返回及文字
- (void)interface_addNaviBarBackTitle:(NSString *)title{
    [self.view addSubview:self.m_navigationBar];

    _m_navigationBar.title = title;
    _m_navigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:17];
    _m_navigationBar.titleLabelColor = CWUBDefineCreate_ColorRGB(0X1A1A1A);
    _m_isNaviBarShow = TRUE;

    [self.m_navigationBar cw_setLeftButtonWithImage:m_image];

}

- (void)interface_addNaviWithTitle:(NSString*)title{
    [self.view addSubview:self.m_navigationBar];
    self.m_navigationBar.title = title;
    self.m_navigationBar.barBackgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
    _m_navigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:17];
    _m_navigationBar.titleLabelColor = CWUBDefineCreate_ColorRGB(0X1A1A1A);
    _m_isNaviBarShow = TRUE;
}

/**
 * 左侧按钮 自定义字体颜色
 */
- (void)interface_addNaviLeft:(UILabel*)lable{

    [self.m_navigationBar addSubview:lable];

    [lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_navigationBar).offset(15);
        make.centerY.equalTo(self.m_navigationBar.titleLable);
    }];

}

/**
 * 右侧按钮 自定义字体颜色
 */
- (void)interface_addNaviRight:(UILabel*)lable{

    [self.m_navigationBar addSubview:lable];

    [lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_navigationBar).offset(-15);
        make.centerY.equalTo(self.m_navigationBar.titleLable);
    }];

}

/**
 * 左侧按钮 自定义字体颜色
 */
- (void)interface_addNaviLeft:(NSString *)title color:(UIColor*)color{
    [self.m_navigationBar addSubview:self.m_lbl_naviLeft];

    self.m_lbl_naviLeft.text = title;
    self.m_lbl_naviLeft.textColor = color;

    [self.m_lbl_naviLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.m_navigationBar).offset(15);
        make.centerY.equalTo(self.m_navigationBar.titleLable);
    }];
}

/**
 * 右侧按钮 自定义字体颜色
 */
- (void)interface_addNaviRight:(NSString *)title color:(UIColor*)color{
    [self.m_navigationBar addSubview:self.m_lbl_naviRight];

    self.m_lbl_naviRight.text = title;
    self.m_lbl_naviRight.textColor = color;

    [self.m_lbl_naviRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.m_navigationBar).offset(-15);
        make.centerY.equalTo(self.m_navigationBar.titleLable);
    }];
}

#pragma mark - 获取顶层控制器

+ (UIViewController *)inner_topViewControllerWithRootViewController:(UIViewController*)rootViewController
{
    if (rootViewController.presentedViewController) {
        UIViewController* presentedViewController = rootViewController.presentedViewController;
        return [self inner_topViewControllerWithRootViewController:presentedViewController];
    }else if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)rootViewController;
        return [self inner_topViewControllerWithRootViewController:tabBarController.selectedViewController];
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController* navigationController = (UINavigationController*)rootViewController;
        return [self inner_topViewControllerWithRootViewController:navigationController.visibleViewController];
    } else {
        return rootViewController;
    }
}

#pragma mark - 选择图片

- (UIImagePickerController *)m_imagePicker{

    if (!_m_imagePicker) {
        _m_imagePicker = [[UIImagePickerController alloc] init];
        _m_imagePicker.editing = YES;
        _m_imagePicker.allowsEditing = NO;
#if TARGET_IPHONE_SIMULATOR  //模拟器

#elif TARGET_OS_IPHONE      //真机
        _m_imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
#endif
        _m_imagePicker.navigationBar.tintColor = [UIColor whiteColor];;
        _m_imagePicker.delegate = self;
    }

    return _m_imagePicker;
}

- (CWUBSelectImg *)m_selectImgView{

    if (!_m_selectImgView) {
        UIImage *img = [UIImage imageNamed:@"FSL_II_上传营业执照"];
        _m_selectImgView = [[CWUBSelectImg alloc] initWithFrame:CGRectMake(0, 0, CWUBDefineDeviceWidth, CWUBDefineDeviceHeight) withBgImg:img];
    }

    return _m_selectImgView;
}

- (void)interface_selectPictureWithBackImg:(NSString*)img{

    [self.m_selectImgView interface_img:img];

    if (@available(iOS 11.0, *)) {
        UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    } else {
        // Fallback on earlier versions
    }

    [self.view addSubview:self.m_selectImgView];

    CWUBBDefine_WeakSelf

    // 点击相机
    self.m_selectImgView.ClickCameraBlock = ^(UIImagePickerController *imgPicker) {

        CWUBControllerBase* strongSelf = weakSelf;
        if (strongSelf) {
            imgPicker.delegate = strongSelf;
            [strongSelf presentViewController:imgPicker animated:YES completion:^{

                [strongSelf.m_selectImgView removeFromSuperview];
            }];
        }

    };

    // 点击相册
    self.m_selectImgView.ClickPhotoBlock = ^(UIImagePickerController *imgPicker) {
        CWUBControllerBase* strongSelf = weakSelf;
        if (strongSelf) {
            imgPicker.delegate = strongSelf;
            [strongSelf presentViewController:imgPicker animated:YES completion:^{
                [strongSelf.m_selectImgView removeFromSuperview];
            }];
        }
    };
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //模态方式退出uiimagepickercontroller
    [picker dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - 选择图片相关 RITLPhotosViewControllerDelegate

/**
 * 选择单张照片
 */
- (void)interface_selectePhotoSingle{

    if (@available(iOS 11.0, *)) {
        UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    }

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];

    [alertController addAction:[UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

        if ([CWUBSelectImg interface_usableCamera] == NO) {   //无权限

            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:@"请在iPhone的“设置-隐私-相机”选项中，允许方石榴访问你的相机。" preferredStyle:UIAlertControllerStyleAlert];
            [alertVC addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alertVC animated:YES completion:nil];
        }else {

            [self presentViewController:self.m_imagePicker animated:YES completion:nil];
        }
    }]];

    [alertController addAction:[UIAlertAction actionWithTitle:@"从手机相册选择" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

        if ([CWUBSelectImg interface_usablePhoto] == NO) {

            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:@"请在iPhone的“设置-隐私-相册”选项中，允许方石榴访问你的相册。" preferredStyle:UIAlertControllerStyleAlert];
            [alertVC addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alertVC animated:YES completion:nil];

        } else {

            self.m_imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            [self presentViewController:self.m_imagePicker animated:YES completion:nil];

        }

    }]];

    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)interface_selectePhoto{

    if (@available(iOS 11.0, *)) {
        UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    }

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];

    [alertController addAction:[UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

        if ([CWUBSelectImg interface_usableCamera] == NO) {   //无权限

            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:@"请在iPhone的“设置-隐私-相机”选项中，允许方石榴访问你的相机。" preferredStyle:UIAlertControllerStyleAlert];
            [alertVC addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alertVC animated:YES completion:nil];
        }else {

            [self presentViewController:self.m_imagePicker animated:YES completion:nil];
        }
    }]];

    [alertController addAction:[UIAlertAction actionWithTitle:@"从手机相册选择" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

        if ([CWUBSelectImg interface_usablePhoto] == NO) {

            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:@"请在iPhone的“设置-隐私-相册”选项中，允许方石榴访问你的相册。" preferredStyle:UIAlertControllerStyleAlert];
            [alertVC addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alertVC animated:YES completion:nil];
        } else {

            [self presentViewController:self.m_photoController animated:YES completion:nil];

        }

    }]];

    [self presentViewController:alertController animated:YES completion:nil];
}


- (RITLPhotosViewController *)m_photoController{

    if (!_m_photoController) {
        _m_photoController = RITLPhotosViewController.photosViewController;

        _m_photoController.configuration.maxCount = 1;//最大的选择数目

        _m_photoController.configuration.containVideo = false;//选择类型，目前只选择图片不选择视频
        _m_photoController.photo_delegate = self;

    }

    return _m_photoController;
}


#pragma mark RITLPhotosViewControllerDelegate
- (void)photosViewController:(UIViewController *)viewController images:(NSArray<UIImage *> *)images infos:(NSArray<NSDictionary *> *)infos{

    if (images.count == 0) {
        [ColorfulWoodAlert showAlertAutoHideWithTitle:@"未能选中图片，请重新选择" afterDelay:2.5];
        return;
    }

    NSMutableArray *arr = [NSMutableArray array];
    for (UIImage *img in images) {
        [arr addObject:img];
    }

    if (arr.count == 1) {
        UIImage *image = [arr objectAtIndex:0];
        if (self.blockCtrlBase_uploadImg) {
            self.blockCtrlBase_uploadImg(image);
        }
    } else {
        if (self.blockCtrlBase_uploadBatch) {
            self.blockCtrlBase_uploadBatch(arr);
        }
    }


    //    if (self.photoArrayM.count >= 3 || self.photoArrayM.count >= 6) {
    //        if (self.RefenshPhotoBlock) {
    //            self.RefenshPhotoBlock(self.indexPath);
    //        }
    //    }
    //    [self updateLayoutSubviews];
    //    [self.collectionView reloadData];

    //    NSLog(@"%@",infos);
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {

    [picker dismissViewControllerAnimated:YES completion:nil];
    //获取到的图片
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    if (self.blockCtrlBase_uploadImg) {
        self.blockCtrlBase_uploadImg(image);
    }
}


#pragma mark - 背景设置
- (CWUBDefaultView *)m_defaultView{

    if(!_m_defaultView){
        _m_defaultView = [[CWUBDefaultView alloc] initWithFrame:self.view.bounds img:@"" title:@""];
        _m_defaultView.backgroundColor = [UIColor whiteColor];
        _m_defaultView.hidden = YES;
        _m_defaultView.delegate = self;

    }
    return _m_defaultView;
}


- (void)interface_defaultShow:(BOOL)show{

    if (show) {
        self.m_defaultView.hidden = NO;
        [self.m_defaultView setHidden:NO];
    } else {
        self.m_defaultView.hidden = YES;
        [self.m_defaultView setHidden:YES];
    }
}

- (void)interface_defaultImg:(NSString*)img title:(NSString*)title{
    [self.m_defaultView interface_updateImg:img title:title];
    [self interface_defaultShow:YES];
}

- (void)interface_defaultNoContent{
    [self.m_defaultView interface_setNoContent];
    [self interface_defaultShow:YES];
}

- (void)interface_defaultNoNet{
    [self.m_defaultView interface_setNoNet];
    [self interface_defaultShow:YES];
}


- (void)interface_defaultNoContentWithView:(UIView*)view{
    [self func_defaultViewAddToView:view];
    [self.m_defaultView interface_setNoContent];
    [self interface_defaultShow:YES];
}

- (void)interface_defaultNoNetWithView:(UIView*)view{
    [self func_defaultViewAddToView:view];
    [self.m_defaultView interface_setNoNet];
    [self interface_defaultShow:YES];
}

/**
 * 添加默认页，覆盖到指定的视图上
 */
- (void)func_defaultViewAddToView:(UIView*)view{

    if ([self.m_defaultView superview] != nil) {
        [self.m_defaultView removeFromSuperview];
    }
    if (view) {
        [self.view addSubview:self.m_defaultView];
        [self.m_defaultView setFrame:view.frame];
    }else{
        [self.view addSubview:self.m_defaultView];
        [self.m_defaultView setFrame:self.view.frame];
    }
}

#pragma mark - TableView model

- (CWUBModel*)m_model{

    if (!_m_model) {
        _m_model = [CWUBModel new];
    }

    return _m_model;
}

#pragma mark - TableView代理


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger i = 0;

    if (self.m_model && self.m_model.m_array_show) {

        if (section<=self.m_model.m_array_show.count-1) {

            NSArray *array = self.m_model.m_array_show[section];

            if (array) {
                i = array.count;
            }
        }
    }

    return i;

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSUInteger i = 0;
    if (self.m_model && self.m_model.m_array_show) {
        i = self.m_model.m_array_show.count;
    }

    return i;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSArray * array =  nil;

    if (indexPath.section <= self.m_model.m_array_show.count-1) {
        array =self.m_model.m_array_show[indexPath.section];
    }

    if (array && indexPath.row <= array.count-1) {

        CWUBModelBase * model = array[indexPath.row];
        CWUBCellBase* cell = (CWUBCellBase*)[model interface_getView:tableView];
        [cell interface_updateWithModel:model];

        if (model.m_type == CWUBCellType_TitleLeft_InputLeft) {
            CWUBCell_TitleLeft_InputLeft * cell1 = (CWUBCell_TitleLeft_InputLeft*)cell;
            cell1.delegate = self;
        }

        if (model.m_type == CWUBCellType_TitleLeft_InputRight_TitleRightBottom) {
            CWUBCell_TitleLeft_InputRight_TitleRightBottom * cell1 = (CWUBCell_TitleLeft_InputRight_TitleRightBottom*)cell;
            cell1.delegate = self;

        }

        if (model.m_type == CWUBCellType_TitleLeft_InputRight_TitleRightBottom_ImgRight) {
            CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight * cell1 = (CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight*)cell;
            cell1.delegate = self;

        }

        if (model.m_type == CWUBCellType_SelectSex_Style1) {
            CWUBCell_SelectSex_Style1 * cell1 = (CWUBCell_SelectSex_Style1*)cell;
            cell1.delegate = self;

        }

        if (model.m_type == CWUBCellType_ImgCenter) {
            CWUBCell_ImgCenter * cell1 = (CWUBCell_ImgCenter*)cell;
            cell1.delegate = self;

        }

        if (model.m_type == CWUBCellType_TitleLeft_InputRight_TitleRightBottom_CodeRight) {
            CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight * cell1 = (CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight*)cell;
            cell1.delegate = self;

        }

        if (model.m_type == CWUBCellType_WebImgStretch) {
            CWUBCell_WebImgStretch * cell1 = (CWUBCell_WebImgStretch*)cell;
            cell1.delegate = self;

        }

        if (model.m_type == CWUBCellType_TitleLeft_InputRight_NumRight) {
            CWUBCell_TitleLeft_InputRight_NumRight * cell1 = (CWUBCell_TitleLeft_InputRight_NumRight*)cell;
            cell1.delegate = self;

        }

        if(model.m_typeName && [model.m_typeName isEqualToString:@"CWUBCell_TitleLeft_InputRight_NumRightBottom"]){
            CWUBCell_TitleLeft_InputRight_NumRightBottom * cell1 = (CWUBCell_TitleLeft_InputRight_NumRightBottom*)cell;
            cell1.delegate = self;
        }

        return cell;

    }else{

        return [UITableViewCell new];
    }

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    /**
     * 触发事件
     */
    CWUBCellBase *cell = (CWUBCellBase *)[tableView cellForRowAtIndexPath:indexPath];
    NSString * code = [cell interface_get_event_opt_code];

    [self CWUBControllerBase_clickWithCode:code];

}

/**
 * cell 点击事件
 */
- (void)CWUBControllerBase_clickWithCode:(NSString *)code{


}

/**
 * 更新数据
 */
- (void)interface_updateWithModel:(CWUBModel*)model{

    if (model.m_array_show.count > 0) {

        [self interface_defaultShow:NO];
        self.m_model = model;
        [self.m_tableView reloadData];

    } else {
        self.m_model = model;
        [self.m_tableView reloadData];
        [self interface_defaultShow:YES];
    }

}

/**
 * 点击图片事件
 * 此处解决崩溃，需要时可在子类重写
 */
- (void)CWUBImageView_clickEvent:(UITapGestureRecognizer*)tap{

    
}

/**
 * 点击Label事件
 * 此处解决崩溃，需要时可在子类重写
 */
- (void)CWUBLabel_clickEvent:(UITapGestureRecognizer*)tap{

}

@end
