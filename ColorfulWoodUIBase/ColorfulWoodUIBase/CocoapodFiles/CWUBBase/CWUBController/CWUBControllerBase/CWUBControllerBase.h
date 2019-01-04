//
//  CWUBControllerBase.h
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/9/6.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorfulWoodNavigationBar/ColorfulWoodNavigationBar.h"
#import "CWUBDefaultView.h"
#import "CWUBSelectImg.h"
#import "ColorfulWoodUIBase.h"
#import "CWUBCell_TitleLeft_InputLeft.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight.h"
#import "CWUBCell_SelectSex_Style1.h"
#import "CWUBCell_ImgCenter.h"
#import "CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight.h"
#import <RITLPhotos/RITLPhotos.h>
#import "CWUBCell_TitleLeft_InputRight_NumRight.h"
#import "CWUBCell_TitleLeft_InputRight_NumRightBottom.h"


@interface CWUBControllerBase : UIViewController<
UITableViewDelegate,
UITableViewDataSource,
CWUBDefaultViewDelegate,
UINavigationControllerDelegate,
UIImagePickerControllerDelegate,
CWUBCell_TitleLeft_InputLeft_Delegate,
CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate,
CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Delegate,
CWUBCell_SelectSex_Style1_Delegate,
CWUBCell_ImgCenter_delegate,
CWUBCell_TitleLeft_InputRight_TitleRightBottom_CodeRight_Delegate,
CWUBCellBaseDelegate,
CWUBCell_TitleLeft_InputRight_NumRight_Delegate,
CWUBCell_TitleLeft_InputRight_NumRightBottom_Delegate
>

#pragma mark - 选择图片 RITLPhotosViewController


/**
 * 选择图片
 */
- (void)interface_selectePhoto;

/**
 * 选择图片 多图 单图
 * 自定义的选择图片，是添加了一个视图
 * 该类提供了更多选择
 */
@property (nonatomic, strong) RITLPhotosViewController *m_photoController;

/**
 * 选择相机
 */
@property (nonatomic, strong) UIImagePickerController *m_imagePicker;

/**
 * 单图上传
 */
@property (nonatomic, copy)void (^blockCtrlBase_uploadImg)(UIImage *image);

/**
 * 多图上传
 */
@property (nonatomic, copy)void (^blockCtrlBase_uploadBatch)(NSMutableArray *photoArrayM);

#pragma mark - tableView
@property(nonatomic, strong)UITableView *m_tableView;

/**
 * 用于TableView显示的数据
 */
@property(nonatomic, strong)CWUBModel *m_model;

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 * hasTabbar: 是否留有下部tabbar
 */
- (void)interface_addTableViewHasTabbar:(BOOL)hasTabbar;

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 */
- (void)interface_addTableViewWithTop:(float)top hasTabbar:(BOOL)hasTabbar;

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 * lr 左右边距
 */
- (void)interface_addTableViewWithTop:(float)top lrSize:(float)lr hasTabbar:(BOOL)hasTabbar;

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 * hasNavi 通过该参数判断controller里是否增加了Navi
 */
- (void)interface_addTableViewWithTop:(float)top hasTabbar:(BOOL)hasTabbar hasNavi:(BOOL)hasNavi;

/**
 * cell 点击事件
 * 用于子类去重写
 */
- (void)CWUBControllerBase_clickWithCode:(NSString *)code;

#pragma mark - 导航
@property (nonatomic, strong) ColorfulWoodNavigationBar *m_navigationBar;
/**
 * 导航栏左侧标题
 */
@property (nonatomic, strong) UILabel *m_lbl_naviLeft;

/**
 * 导航栏右侧标题
 */
@property (nonatomic, strong) UILabel *m_lbl_naviRight;

/**
 * 无内容、无网络时的默认背景
 */
@property (nonatomic, strong) CWUBDefaultView * m_defaultView;

/**
 * 选择照片，带背景图片
 */
@property (nonatomic, strong) CWUBSelectImg *m_selectImgView;

/**
 * 只有标题
 */
- (void)interface_addNaviWithTitle:(NSString*)title;

/**
 * 返回按钮和标题 标题为空时，则表现为只有左侧按钮
 */
- (void)interface_addNaviBarBackTitle:(NSString *)title;

/**
 * 左侧按钮 自定义字体颜色
 */
- (void)interface_addNaviLeft:(UILabel*)lable;

/**
 * 右侧按钮 自定义字体颜色
 */
- (void)interface_addNaviRight:(UILabel*)lable;

/**
 * 左侧按钮 自定义字体颜色
 */
- (void)interface_addNaviLeft:(NSString *)title color:(UIColor*)color;

/**
 * 右侧按钮 自定义字体颜色
 */
- (void)interface_addNaviRight:(NSString *)title color:(UIColor*)color;

/**
 * 导航栏左侧Label返回事件
 */
- (void)onEvent_naviabelLeft;

/**
 * 导航栏右侧Label返回事件
 */
- (void)onEvent_naviLabelRight;
@end
