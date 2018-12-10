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

@interface CWUBControllerBase ()

/**
 * 是否添加了导航栏，用于tableview布局
 */
@property(nonatomic, assign)BOOL m_isNaviBarShow;
@end

@implementation CWUBControllerBase



- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
    if (@available(iOS 11.0, *)){
        [[UIScrollView appearance] setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    }
}

- (void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];

    UITableView.appearance.estimatedRowHeight = 200;
    UITableView.appearance.estimatedSectionFooterHeight = 0;
    UITableView.appearance.estimatedSectionHeaderHeight = 0;
}

#pragma mark - tableView
- (UITableView*)m_tableView{

    if (!_m_tableView) {
        _m_tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _m_tableView.tag = 2;
        _m_tableView.delegate = self;
        _m_tableView.dataSource = self;
        _m_tableView.allowsSelection = YES;
        _m_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_m_tableView setBackgroundColor:[UIColor clearColor]];
        //设置cell的估计高度
        _m_tableView.estimatedRowHeight = 200;
        _m_tableView.backgroundView = self.m_defaultView;

        //iOS以后这句话是默认的，所以可以省略这句话
        _m_tableView.rowHeight = UITableViewAutomaticDimension;
        //        [_m_tableView setContentSize:CGSizeMake(kDeviceWidth, kDeviceHeight-(header_height)+1)];


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

            make.top.equalTo(self.customNavigationBar.mas_bottom);

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
            make.top.equalTo(self.customNavigationBar.mas_bottom).offset(top);
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
            make.top.equalTo(self.customNavigationBar.mas_bottom).offset(top);
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
 */
- (void)interface_addTableViewWithTop:(float)top hasTabbar:(BOOL)hasTabbar hasNavi:(BOOL)hasNavi{

    self.m_isNaviBarShow = hasNavi;

    [self.view addSubview:self.m_tableView];
    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {

        if (self.m_isNaviBarShow) {
            float height = 44 + CGRectGetHeight([UIApplication sharedApplication].statusBarFrame) + top;
            make.top.equalTo(self.view).offset(height);
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

#pragma mark 只有文字
- (void)makeDefaultBar{
    [self.view addSubview:self.customNavigationBar];
    self.customNavigationBar.barBackgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
    self.customNavigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:17];
    self.customNavigationBar.titleLabelColor = CWUBDefineCreate_ColorRGB(0X1A1A1A);
}

#pragma mark  返回及文字
- (void)makeRowDefaultBar{
    [self.view addSubview:self.customNavigationBar];
    self.customNavigationBar.barBackgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
    UIImage *image = CWUBBDefine_bundle_pngImg(@"CWUBBundle_Back");
    [self.customNavigationBar cw_setLeftButtonWithImage:image];
    _customNavigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:17];
    _customNavigationBar.titleLabelColor = CWUBDefineCreate_ColorRGB(0X1A1A1A);
    _m_isNaviBarShow = TRUE;
}

- (void)makeNaviWithTitle:(NSString*)title{
    [self.view addSubview:self.customNavigationBar];
    self.customNavigationBar.title = title;
    self.customNavigationBar.barBackgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
    _customNavigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:17];
    _customNavigationBar.titleLabelColor = CWUBDefineCreate_ColorRGB(0X1A1A1A);
    _m_isNaviBarShow = TRUE;
}


- (ColorfulWoodNavigationBar *)customNavigationBar{
    if (!_customNavigationBar) {
        _customNavigationBar = [ColorfulWoodNavigationBar CustomNavigationBar];
        [_customNavigationBar cw_setBottomLineHidden:YES];
        _customNavigationBar.titleLabelFont = [UIFont fontWithName:@"PingFangSC-Medium" size:17];
        _customNavigationBar.titleLabelColor = CWUBDefineCreate_ColorRGB(0X1A1A1A);
    }
    return _customNavigationBar;
    
}

/**
 * 左侧按钮 自定义字体颜色
 */
- (void)interface_addNaviLeft:(UILabel*)lable{

    [self.customNavigationBar addSubview:lable];

    [lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.customNavigationBar).offset(15);
        make.centerY.equalTo(self.customNavigationBar.titleLable);
    }];

}

/**
 * 右侧按钮 自定义字体颜色
 */
- (void)interface_addNaviRight:(UILabel*)lable{

    [self.customNavigationBar addSubview:lable];

    [lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.customNavigationBar).offset(-15);
        make.centerY.equalTo(self.customNavigationBar.titleLable);
    }];

}

/**
 * 左侧按钮 自定义字体颜色
 */
- (void)interface_addNaviLeft:(NSString *)title color:(UIColor*)color{
    [self.customNavigationBar addSubview:self.m_lbl_naviLeft];

    self.m_lbl_naviLeft.text = title;
    self.m_lbl_naviLeft.textColor = color;

    [self.m_lbl_naviLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.customNavigationBar).offset(15);
        make.centerY.equalTo(self.customNavigationBar.titleLable);
    }];
}

/**
 * 右侧按钮 自定义字体颜色
 */
- (void)interface_addNaviRight:(NSString *)title color:(UIColor*)color{
    [self.customNavigationBar addSubview:self.m_lbl_naviRight];

    self.m_lbl_naviRight.text = title;
    self.m_lbl_naviRight.textColor = color;

    [self.m_lbl_naviRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.customNavigationBar).offset(-15);
        make.centerY.equalTo(self.customNavigationBar.titleLable);
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
 * 获取控制器，获取视图控制器
 */
- (UIViewController *)inner_findViewController{

    for (UIView* next = self; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

@end
