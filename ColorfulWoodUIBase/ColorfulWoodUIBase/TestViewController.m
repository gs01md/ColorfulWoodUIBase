//
//  TestViewController.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/5/31.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "TestViewController.h"
#import "ColorfulWoodUIBase.h"

@interface TestViewController ()<
UITableViewDelegate,
UITableViewDataSource,
CWUBCell_WebImgStretchDelegate
>
@property(nonatomic, strong)CWUBModel * m_model;
@property(nonatomic, strong)CWUBModel * m_model_viewHead;
@property(nonatomic, strong)UITableView * m_tableView;

@property(strong, nonatomic) NSArray *m_titleArray;
@property(strong, nonatomic) NSArray *m_imageArray;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self testView];
}

- (void) testView {

    [self interface_transToViewData_view];

    [self interface_transToViewData_table];

    UIView *view = [self func_view];

    [self.view addSubview:self.m_tableView];

    if (view) {
        [self.m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(view.mas_bottom);
            make.left.equalTo(self.view);
            make.right.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }

    [self.m_tableView reloadData];
}

- (void) testTableView {

    [self interface_transToViewData_table];

    [self.view addSubview:self.m_tableView];
    _m_tableView.backgroundColor = [UIColor whiteColor];

    [self.m_tableView reloadData];


}

- (CWUBModel*) m_model_viewHead{

    if (!_m_model_viewHead) {
        _m_model_viewHead = [CWUBModel new];
    }
    return _m_model_viewHead;
}

- (CWUBModel*) m_model{

    if (!_m_model) {
        _m_model = [CWUBModel new];
    }
    return _m_model;
}

- (CWUBModel*)interface_transToViewData_view{

    [self.m_model.m_array_show removeAllObjects];

    [self func_getView];

    return self.m_model;
}

- (CWUBModel*)interface_transToViewData_table{

    [self.m_model.m_array_show removeAllObjects];

    [self func_getOne];

    return self.m_model;
}

- (void) func_getView{

    NSMutableArray * data = [NSMutableArray new];

    CWUBCell_TitleLeft_TitleRight_Model * model2 = [CWUBCell_TitleLeft_TitleRight_Model new];
    model2.m_type = CWUBCellType_TitleLeft_TitleRight;
    model2.m_title_left = [[CWUBTextInfo alloc] initWithText:@"大标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:23.2] color:[CWUBDefine colorBlueDeep]];
    model2.m_title_right = [[CWUBTextInfo alloc] initWithText:@"大标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:23.2] color:[CWUBDefine colorBlueDeep]];
    model2.m_bottomLineInfo.m_color = [UIColor brownColor];

    [data addObject:model2];

    CWUBCell_ImgCenter_Model * model3 = [CWUBCell_ImgCenter_Model new];
    model3.m_type = CWUBCellType_ImgCenter;
    model3.m_bottomLineInfo.m_color = [UIColor clearColor];
    model3.m_image = [[CWUBImageInfo alloc] initWithName:@"back" width:90. height:90.];

    [data addObject:model3];

    CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model * model4 = [CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model new];
    model4.m_type = CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo;
    model4.m_title_leftTop = [[CWUBTextInfo alloc] initWithText:@"1" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_leftBottom = [[CWUBTextInfo alloc] initWithText:@"信息" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"0" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

    float fMargin = 1.;
    model4.m_title_rightTop.m_margin_bottom = fMargin;
    model4.m_title_rightBottom.m_margin_top = fMargin;
    model4.m_title_leftTop.m_margin_bottom = fMargin;
    model4.m_title_leftBottom.m_margin_top = fMargin;
    model4.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"提醒" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_bottomLineInfo.m_color = [UIColor blueColor];
    model4.m_img_center = [[CWUBImageInfo alloc] initWithName:@"sep" width:1. height:10.];

    [data addObject:model4];

    CWUBCell_ImgLeft_TitleRightThree_Model * model5 = [CWUBCell_ImgLeft_TitleRightThree_Model new];
    model5.m_type = CWUBCellType_ImgLeft_TitleRightThree;
    model5.m_bottomLineInfo.m_color = [UIColor blueColor];
    model5.m_img_left = [[CWUBImageInfo alloc] initWithName:@"back" width:90. height:90.];
    model5.m_img_left.m_isCircle = YES;
    model5.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_rightCenter = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_back.m_color_background = [UIColor redColor];
    model5.m_color_backGround = [UIColor clearColor];

    [data addObject:model5];

    if (data.count>0) {
        [self.m_model_viewHead.m_array_show addObject:data];
    }

}

- (UIView*)func_view{

    return [CWUBViewOpt interface_addViewsTo:self.view topView:nil  withModel:self.m_model_viewHead];
}

- (void) func_getOne{

    NSMutableArray * data = [NSMutableArray new];

    CWUBCell_TitleLeft_ButtonRight_Model *model = [CWUBCell_TitleLeft_ButtonRight_Model new];
    model.m_type = CWUBCellType_TitleLeft_ButtonRight;
    model.m_bottomLineInfo.m_color = [UIColor redColor];
    model.m_bottomLineInfo.m_margin_left = 60.;
    model.m_bottomLineInfo.m_margin_right = 20.;
    model.m_bottomLineInfo.m_margin_top = 20.;
    model.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model.m_title.m_margin_left = 50.;
    model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];
    model.m_btnImg.m_margin_right = 50.;
    model.m_btnImg.m_margin_top = 24.;
    model.m_btnImg.m_margin_bottom = 24.;
    model.m_title.m_margin_top = 24.;
    model.m_title.m_margin_bottom = 24.;

    [data addObject:model];
    /*
     CWUBCell_TitleRight_ButtonRight_Model * model = [CWUBCell_TitleRight_ButtonRight_Model new];
     model.m_type = CWUBCellType_TitleRight_ButtonRight;
     model.m_title = [[CWUBTextInfo alloc] initWithText:@"查看详情" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
     model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
     model.m_event_opt_code = @"查看详情";
     model.m_color_bottomLine = [UIColor blueColor];
     [data addObject:model];

     CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model * model1 = [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model new];
     model1.m_type = CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight;
     model1.m_title_left = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
     model1.m_title_right = [[CWUBTextInfo alloc] initWithText:@"内容内" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
     model1.m_color_bottomLine = [UIColor redColor];
     model1.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
     model1.m_img_right = [[CWUBImageInfo alloc] initWithName:@"big" width:20. height:12.];
     //    model1.m_margin_leftOrRight = 10.;
     //    model1.m_bottomLineType = CWUBBottomLineType_right;
     //    model1.m_title_left.m_labelTextVerticalType = CWUBLabelTextVerticalType_top;
     [data addObject:model1];

     */
    /*
     CWUBCell_WebImgStretch_Model * model2 = [CWUBCell_WebImgStretch_Model new];
     model2.m_type = CWUBCellType_WebImgStretch;
     model2.m_image = [[CWUBImageInfo alloc] initWithName:@"http://img.zcool.cn/community/0112a85874bd24a801219c7729e77d.jpg"  defaultName:@"back"];
     model2.m_bottomLineInfo.m_color = [UIColor clearColor];
     model2.m_image.m_margin_left=1;
     model2.m_image.m_margin_right=1;
     model2.m_image.m_margin_bottom=1;
     model2.m_image.m_margin_top=1;

     [data addObject:model2];

     CWUBCell_WebImgStretch_Model * model3 = [CWUBCell_WebImgStretch_Model new];
     model3.m_type = CWUBCellType_WebImgStretch;
     model3.m_image = [[CWUBImageInfo alloc] initWithName:@"http://img.zcool.cn/community/0112a85874bd24a801219c7729e77d.jpg"  defaultName:@"back"];
     model3.m_bottomLineInfo.m_color = [UIColor clearColor];
     model3.m_image.m_margin_left=1;
     model3.m_image.m_margin_right=1;
     model3.m_image.m_margin_bottom=1;
     model3.m_image.m_margin_top=1;

     [data addObject:model3];*/

    /*
     CWUBCell_TitleLeft_ButtonRight_Model * model3 = [CWUBCell_TitleLeft_ButtonRight_Model new];
     model3.m_type = CWUBCellType_TitleLeft_ButtonRight;
     model3.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model3.m_color_bottomLine = [UIColor blueColor];
     model3.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];

     CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model * model4 = [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model new];
     model4.m_type = CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight;
     model4.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model4.m_title_bottom_left = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model4.m_title_bottom_right = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model4.m_color_bottomLine = [UIColor blueColor];
     model4.m_img_top = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];

     [data addObject:model4];

     [data addObject:model3];

     CWUBCell_Passenger_Delete_Model * model5 = [CWUBCell_Passenger_Delete_Model new];
     model5.m_type = CWUBCellType_Passenger_Delete;
     model5.m_title_id = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model5.m_info_id = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model5.m_info_name = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model5.m_title_name = [[CWUBTextInfo alloc] initWithText:@"职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
     model5.m_color_bottomLine = [UIColor blueColor];
     model5.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];


     [data addObject:model5];
     */
    if (data.count>0) {
        [self.m_model.m_array_show addObject:data];
    }

}

- (UITableView*)m_tableView{

    if (!_m_tableView) {

        float fLeft   = 0;
        float fTop    = 0;
        float fWidth  = CWUBDefineSViewControllerWidth;
        float fHeight = CWUBDefineSViewControllerHeight;
        CGRect rect = CGRectMake(fLeft, fTop, fWidth, fHeight);
        _m_tableView = [[UITableView alloc] initWithFrame:rect style:UITableViewStylePlain];
        _m_tableView.delegate = self;
        _m_tableView.dataSource = self;
        _m_tableView.allowsSelection = NO;
        _m_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_m_tableView setBackgroundColor:[UIColor whiteColor]];

        //设置cell的估计高度
        _m_tableView.estimatedRowHeight = 200;

        //iOS以后这句话是默认的，所以可以省略这句话
        _m_tableView.rowHeight = UITableViewAutomaticDimension;
    }

    return _m_tableView;
}



#pragma mark - 代理 tableview

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

        if (model.m_type == CWUBCellType_WebImgStretch) {
            CWUBCell_WebImgStretch * cell1 = (CWUBCell_WebImgStretch*)cell;
            cell1.delegate = self;
            //cell1.delegate = self;
        }

        return cell;

    }else{

        return [UITableViewCell new];
    }

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    CWUBCellBase *cell = (CWUBCellBase *)[tableView cellForRowAtIndexPath:indexPath];
    NSString * code = [cell interface_get_event_opt_code];
    if ([code isEqualToString:@"查看详情"]) {

    }
}

- (void)CWUBCell_WebImgStretchDelegate_updateLayout{

    [self.m_tableView reloadData];
}


- (CWUBModel*)interface_transToViewData{

    return [self func_getTableView];
}

#pragma mark - 顶部视图
- (CWUBModel *)interface_transToViewData_top{

    if(1){//个人
        return [self func_getViewModel_personal];
    }else{
        return [self func_getViewModel_company];
    }
}

- (CWUBModel *)func_getViewModel_personal{

    CWUBModel * temp = [CWUBModel new];

    NSMutableArray * data = [NSMutableArray new];

    if (1) {
        CWUBCell_TitleLeft_ButtonRight_Model * model1 = [CWUBCell_TitleLeft_ButtonRight_Model new];
        model1.m_type = CWUBCellType_TitleLeft_ButtonRight;
        model1.m_title = [[CWUBTextInfo alloc] initWithText:@"完成身份认证，解锁app功能权限" font:[UIFont fontWithName:@"PingFangSC-Regular" size:26.2] color:[CWUBDefine colorBlueDeep]];
        model1.m_title.m_color = [UIColor clearColor];
        model1.m_color_backGround = [CWUBDefine colorBlueDeep];
        model1.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"FSL_M_编辑按钮" width:50. height:20.];
        [data addObject:model1];
    }

    CWUBCell_ImgLeft_TitleRightThree_Model * model5 = [CWUBCell_ImgLeft_TitleRightThree_Model new];
    model5.m_type = CWUBCellType_ImgLeft_TitleRightThree;
    model5.m_img_left = [[CWUBImageInfo alloc] initWithName:@"FSL_M_我的个人头像" width:60. height:60.];
    model5.m_img_left.m_isCircle = YES;
    model5.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:26.2] color:[UIColor blackColor]];
    model5.m_title_rightCenter = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

    [data addObject:model5];

    if (data.count>0) {
        [temp.m_array_show addObject:data];
    }

    return temp;

}

- (CWUBModel *)func_getViewModel_company{

    CWUBModel * temp = [CWUBModel new];

    NSMutableArray * data = [NSMutableArray new];

    if (1) {
        CWUBCell_TitleLeft_ButtonRight_Model * model1 = [CWUBCell_TitleLeft_ButtonRight_Model new];
        model1.m_type = CWUBCellType_TitleLeft_ButtonRight;
        model1.m_title = [[CWUBTextInfo alloc] initWithText:@"完成身份认证，解锁app功能权限" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
        model1.m_bottomLineInfo.m_color = [UIColor clearColor];
        model1.m_color_backGround = [CWUBDefine colorBlueDeep];
        model1.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"FSL_M_编辑按钮" width:50. height:20.];
        [data addObject:model1];
    }

    CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model * model6 = [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model new];
    model6.m_type = CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight;
    model6.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[UIColor whiteColor]];
    model6.m_title_bottom_left = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[UIColor whiteColor]];
    model6.m_title_bottom_right = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[UIColor whiteColor]];
    model6.m_bottomLineInfo.m_color = [UIColor clearColor];
    model6.m_img_top = [[CWUBImageInfo alloc] initWithName:@"FSL_M_我的企业头像logo" width:70. height:70.];
    model6.m_title_center.m_margin_bottom = 5.;
    model6.m_title_bottom_left.m_margin_top = 5.;
    model6.m_title_bottom_right.m_margin_top = 5.;

    [data addObject:model6];

    CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model * model4 = [CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model new];
    model4.m_type = CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo;
    model4.m_title_leftTop = [[CWUBTextInfo alloc] initWithText:@"1" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_leftBottom = [[CWUBTextInfo alloc] initWithText:@"我的关注" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"0" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];

    float fMargin = 1.;
    model4.m_title_rightTop.m_margin_bottom = fMargin;
    model4.m_title_rightBottom.m_margin_top = fMargin;
    model4.m_title_leftTop.m_margin_bottom = fMargin;
    model4.m_title_leftBottom.m_margin_top = fMargin;
    model4.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"我的商讯" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_bottomLineInfo.m_color = [UIColor clearColor];
    model4.m_img_center = [[CWUBImageInfo alloc] initWithName:@"sep" width:1. height:10.];
    model4.m_back = [[CWUBImageInfo alloc] initWithName:@"sep" width:1. height:10.];
    model4.m_back.m_margin_left = 20.;
    model4.m_back.m_margin_right = 20.;
    model4.m_back.m_color_background = [UIColor whiteColor];

    [data addObject:model4];

    if (data.count>0) {
        [temp.m_array_show addObject:data];
    }

    return temp;

}

#pragma mark - 列表
/**
 * 列表信息
 */
- (void)func_changeTableArray{

    if( 1){//个人
        self.m_titleArray = @[@"关注的企业",@"基本信息",@"账号安全",@"切换身份",@"新手引导",@"问题反馈",@"关于我们"];
        self.m_imageArray = @[@"FSL_M_关注的企业",@"FSL_M_基本信息",@"FSL_M_帐号安全",@"FSL_M_身份切换",@"FSL_M_新手引导",@"FSL_M_意见反馈",@"FSL_M_关于我们"];
    }
//    else{
//        self.m_titleArray = @[@"VIP会员",@"企业信息",@"账号安全",@"切换身份",@"新手引导",@"问题反馈",@"关于我们"];
//        self.m_imageArray = @[@"FSL_M_VIP会员页皇冠",@"FSL_M_企业信息",@"FSL_M_帐号安全",@"FSL_M_身份切换",@"FSL_M_新手引导",@"FSL_M_意见反馈",@"FSL_M_关于我们"];
//    }
}

/**
 * 获取列表数据
 */
- (CWUBModel *)func_getTableView{

    CWUBModel * temp = [CWUBModel new];

    [self func_changeTableArray];

    NSMutableArray * data = [NSMutableArray new];

    for(int i =0; i<self.m_titleArray.count; i++ ){

        NSString *strName = self.m_titleArray[i];
        NSString *strImg = self.m_imageArray[i];

        CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model * model = [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model new];
        model.m_type = CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight;
        model.m_bottomLineInfo.m_bottomLineType = CWUBBottomLineType_right;
        model.m_bottomLineInfo.m_color = [CWUBDefine colorBlueDeep];
        model.m_img_left = [[CWUBImageInfo alloc] initWithName:strImg width:13. height:13.];
        model.m_title_left = [[CWUBTextInfo alloc] initWithText:strName font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
        model.m_title_left.m_margin_left = 15.;
        model.m_img_right = [[CWUBImageInfo alloc] initWithName:@"FSL_HB_跳转标" width:8. height:8.];
        model.m_event_opt_code = @"查看详情";
        [data addObject:model];
    }

    if (data.count>0) {
        [temp.m_array_show addObject:data];
    }

    return temp;

}


@end
