//
//  ViewController.m
//  TestUI
//
//  Created by 大新 on 2017/1/28.
//  Copyright © 2017年 ColorWood. All rights reserved.
//

#import "ViewController.h"
#import "ColorfulWoodUIBase.h"

@interface ViewController ()<
UITableViewDelegate,
UITableViewDataSource,
CWUBCell_WebImgStretchDelegate,
CWUBCell_MyFollow_MyBusinessDelegate,
CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate,
CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate,
CWUBCell_CollectionTop_TitleBottom_Delegate
>
@property(nonatomic, strong)CWUBModel * m_model;
@property(nonatomic, strong)CWUBModel * m_model_viewHead;
@property(nonatomic, strong)UITableView * m_tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.automaticallyAdjustsScrollViewInsets = NO;

    [self testTableView];

    self.view.backgroundColor = [UIColor blueColor];
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

    if (1) {
        CWUBCell_TitleLeft_ButtonRight_Model * model1 = [CWUBCell_TitleLeft_ButtonRight_Model new];
        model1.m_type = CWUBCellType_TitleLeft_ButtonRight;
        model1.m_title = [[CWUBTextInfo alloc] initWithText:@"完成身份认证，解锁app功能权限" font:[UIFont fontWithName:@"PingFangSC-Regular" size:26.2] color:[CWUBDefine colorBlueDeep]];
        model1.m_title.m_color = [UIColor blueColor];
        model1.m_color_backGround = [UIColor yellowColor];
        model1.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"b2" width:50. height:20.];
        [data addObject:model1];
    }

    CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model * model6 = [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model new];
    model6.m_type = CWUBCellType_ImgLeft_TitleRightTopTwo_TitleRightBottom;
    model6.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:90. height:90.];
    model6.m_img_left.m_isCircle = YES;
    model6.m_title_rightTopLeft = [[CWUBTextInfo alloc] initWithText:@"姓名姓名" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:22] color:CWUBDefineCreate_Color(39,39,39,1)];
    model6.m_title_rightTopRight = [[CWUBTextInfo alloc] initWithText:@" CEOCEOCEOCEOCEOCEOCEOCEO " font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightTopRight.m_numberOfLines = 1;
    model6.m_title_rightTopRight.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:5. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightTopRight.m_insets = UIEdgeInsetsMake(5., 5., 5., 5.);
    model6.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_color_backGround = [UIColor whiteColor];


    [data addObject:model6];

//    CWUBCell_ImgLeft_TitleRightThree_Model * model5 = [CWUBCell_ImgLeft_TitleRightThree_Model new];
//    model5.m_type = CWUBCellType_ImgLeft_TitleRightThree;
//    model5.m_img_left = [[CWUBImageInfo alloc] initWithName:@"FSL_M_我的个人头像" width:60. height:60.];
//    model5.m_img_left.m_isCircle = YES;
//    model5.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:26.2] color:[UIColor blackColor]];
//    model5.m_title_rightCenter = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//    model5.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//    model5.m_back.m_color_background = [UIColor whiteColor];
//
//    [data addObject:model5];

    if (data.count>0) {
        [self.m_model_viewHead.m_array_show addObject:data];
    }


//    CWUBCell_TitleLeft_TitleRight_Model * model2 = [CWUBCell_TitleLeft_TitleRight_Model new];
//    model2.m_type = CWUBCellType_TitleLeft_TitleRight;
//    model2.m_title_left = [[CWUBTextInfo alloc] initWithText:@"大标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:23.2] color:[CWUBDefine colorBlueDeep]];
//    model2.m_title_right = [[CWUBTextInfo alloc] initWithText:@"大标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:23.2] color:[CWUBDefine colorBlueDeep]];
//    model2.m_bottomLineInfo.m_color = [UIColor brownColor];
//
//    [data addObject:model2];
//
//    CWUBCell_ImgCenter_Model * model3 = [CWUBCell_ImgCenter_Model new];
//    model3.m_type = CWUBCellType_ImgCenter;
//    model3.m_bottomLineInfo.m_color = [UIColor clearColor];
//    model3.m_image = [[CWUBImageInfo alloc] initWithName:@"back" width:90. height:90.];
//
//    [data addObject:model3];
//
//    CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model * model4 = [CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model new];
//    model4.m_type = CWUBCellType_TitleLeftTwo_ImgCenter_TitleRightTwo;
//    model4.m_title_leftTop = [[CWUBTextInfo alloc] initWithText:@"1" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//    model4.m_title_leftBottom = [[CWUBTextInfo alloc] initWithText:@"信息" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//    model4.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"0" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//
//    float fMargin = 1.;
//    model4.m_title_rightTop.m_margin_bottom = fMargin;
//    model4.m_title_rightBottom.m_margin_top = fMargin;
//    model4.m_title_leftTop.m_margin_bottom = fMargin;
//    model4.m_title_leftBottom.m_margin_top = fMargin;
//    model4.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"提醒" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//    model4.m_bottomLineInfo.m_color = [UIColor blueColor];
//    model4.m_img_center = [[CWUBImageInfo alloc] initWithName:@"sep" width:1. height:10.];
//
//    [data addObject:model4];
//
//    CWUBCell_ImgLeft_TitleRightThree_Model * model5 = [CWUBCell_ImgLeft_TitleRightThree_Model new];
//    model5.m_type = CWUBCellType_ImgLeft_TitleRightThree;
//    model5.m_bottomLineInfo.m_color = [UIColor blueColor];
//    model5.m_img_left = [[CWUBImageInfo alloc] initWithName:@"back" width:90. height:90.];
//    model5.m_img_left.m_isCircle = YES;
//    model5.m_title_rightTop = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//    model5.m_title_rightCenter = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//    model5.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
//
//    [data addObject:model5];

//    if (data.count>0) {
//        [self.m_model_viewHead.m_array_show addObject:data];
//    }

}

- (UIView*)func_view{

    return [CWUBViewOpt interface_addViewsTo:self.view topView:nil  withModel:self.m_model_viewHead];
}

- (void) func_getOne{

    NSMutableArray * data = [NSMutableArray new];


    CWUBCell_CollectionTop_TitleBottom_Model * model19 = [CWUBCell_CollectionTop_TitleBottom_Model new];
    model19.m_type = CWUBCellType_CollectionTop_TitleBottom;


    float imgWidth = 10;
    /**
     * 下部的提示文字
     */
    model19.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model19.m_collection_top.m_canUserInteract = @"0";
    NSArray * array = @[@"航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空",@"航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空空航空航空航空航空",@"航空航空",@"空航空",@"航空航空航空",@"航空",@"航空航空",@"航空航空",@"航空航空航空",@"空",@"航空航航空",@"空航空",@"航空航空航空",@"航空"];

    for (NSString* temp in array) {
        CWUBTextInfo * info = [[CWUBTextInfo alloc] initWithText:temp font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
        //info.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];

        CWUBView_TitleLeft_ButtonRight_Model *m1 = [[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:info img:[[CWUBImageInfo alloc] initWithName:@"right" width:imgWidth height:imgWidth]];
        m1.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
        m1.m_color_backGround = [UIColor redColor];
        [model19.m_collection_top.m_array addObject:m1];
    }

    model19.m_event_opt_code = @"感兴趣行业";

    model19.m_bottomLineInfo.m_color = [UIColor redColor];
    [data addObject:model19];

    CWUBCell_SelectSex_Style1_Model *model18 = [CWUBCell_SelectSex_Style1_Model new];
    model18.m_type = CWUBCellType_SelectSex_Style1;
    model18.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择性别" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model18.m_title_man = [[CWUBTextInfo alloc] initWithText:@"先生" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model18.m_title_woman = [[CWUBTextInfo alloc] initWithText:@"女士" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model18.m_title_man.m_height = 23;
    model18.m_title_woman.m_height = model18.m_title_man.m_height;
    model18.m_title_man.m_width = 50;
    model18.m_title_woman.m_width = 50;
    model18.m_title_man.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:model18.m_title_man.m_height/2. width:0.5 color:[UIColor redColor]];
    model18.m_title_woman.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:model18.m_title_man.m_height/2. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model18.m_title_man.m_margin_left = 40;

    [data addObject:model18];

    CWUBCell_TitleCenter_Model *model17 = [CWUBCell_TitleCenter_Model new];
    model17.m_type = CWUBCellType_TitleCenter;
    model17.m_title.m_margin_top = 1.;
    model17.m_title.m_margin_bottom = 1.;
    model17.m_title.m_text = @"*资料认证未通过，点击进入修改";
    model17.m_title.m_color = [UIColor redColor];
    model17.m_title.m_color_backGroud = [UIColor blueColor];
    model17.m_bottomLineInfo.m_image = @"line";
    model17.m_title.m_height = 50.;
    model17.m_color_backGround = [UIColor redColor];
    model17.m_title.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    [data addObject:model17];

    CWUBCell_ImgBack_TitleFront_Model * model16 = [CWUBCell_ImgBack_TitleFront_Model new];
    model16.m_type = CWUBCellType_ImgBack_TitleFront;

    model16.m_title = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model16.m_image.m_imgName = @"back";
    model16.m_image.m_contentMode = UIViewContentModeScaleAspectFill;
    model16.m_image.m_height = 100;
    model16.m_image.m_contentMode = UIViewContentModeScaleToFill;
    model16.m_bottomLineInfo.m_color = [UIColor redColor];
    model16.m_image.m_isClipToBounds = YES;
    model16.m_title.m_margin_CenterY = -25.;
    [data addObject:model16];

    CWUBCell_TitleTop_TitleBottom_Model * model15 = [CWUBCell_TitleTop_TitleBottom_Model new];
    model15.m_type = CWUBCellType_TitleTop_TitleBottom;

    model15.m_title_top = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model15.m_title_bottom = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model15.m_bottomLineInfo.m_color = [UIColor redColor];
    [data addObject:model15];

    CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model * model14 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model new];
    model14.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom_ImgRight;

    model14.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model14.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model14.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model14.m_input_right.m_textPlaceholder = @"请输入内容";
    model14.m_input_right.m_bUppercaseString = YES;
    model14.m_input_right.m_margin_bottom = 20.;
    model14.m_input_right.m_margin_top = 20.;
    model14.m_title_bottomRight.m_margin_bottom = 1.;
    model14.m_input_right.m_regex = ColorfulWoodRegex_1;
    model14.m_title_left.m_width = [model14.m_title_left interface_setWidthByContent];
    model14.m_bottomLineInfo.m_color = [UIColor blueColor];
    model14.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    [data addObject:model14];

    CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model * model13 = [CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model new];
    model13.m_type = CWUBCellType_TitleLeft_InputRight_TitleRightBottom;

    model13.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];;
    model13.m_title_bottomRight = [[CWUBTextInfo alloc] initWithText:@"选择行业1" font:[CWUBDefine fontOptButton] color:[UIColor redColor]];
    model13.m_input_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model13.m_input_right.m_regex = ColorfulWoodRegex_1;
    model13.m_input_right.m_bUppercaseString = YES;
    model13.m_input_right.m_textPlaceholder = @"请输入内容";
    model13.m_input_right.m_margin_bottom = 20.;
    model13.m_input_right.m_margin_top = 20.;
    model13.m_title_bottomRight.m_margin_bottom = 1.;
    model13.m_title_left.m_width = [model13.m_title_left interface_setWidthByContent];
    model13.m_bottomLineInfo.m_color = [UIColor blueColor];
    [data addObject:model13];

    CWUBCell_SevenImg_Model * model12 = [CWUBCell_SevenImg_Model new];
    model12.m_type = CWUBCellType_SevenImg;

    model12.m_img_one = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    model12.m_img_two = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    model12.m_img_three = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
    model12.m_img_three.m_margin_right = CWUBDefine_Width(53.);

    model12.m_img_one.m_margin_left = CWUBDefine_Width(53.);
    model12.m_title_one.m_height = 2.;
    model12.m_title_one.m_color_backGroud = [UIColor blueColor];
    model12.m_title_one.m_margin_left = 0.01;
    model12.m_title_four.m_margin_right = 0.01;
    model12.m_title_four.m_margin_left = CWUBDefine_Width(5.);
    model12.m_title_one.m_margin_right = CWUBDefine_Width(5.);
    model12.m_title_two.m_margin_left = CWUBDefine_Width(5.);
    model12.m_title_two.m_margin_right = CWUBDefine_Width(5.);
    model12.m_title_three.m_margin_left = CWUBDefine_Width(5.);
    model12.m_title_three.m_margin_right = CWUBDefine_Width(5.);


    [data addObject:model12];



    CWUBCell_TitleLeft_CollectionRight_ImgRight_Model * model11 = [CWUBCell_TitleLeft_CollectionRight_ImgRight_Model new];
    model11.m_type = CWUBCellType_TitleLeft_CollectionRight_ImgRight;

    model11.m_title_left = [[CWUBTextInfo alloc] initWithText:@"请选择行业" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];

    /**
     * 右侧的提示文字
     */
    model11.m_title_right = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];

    float imgWidth1 = 0.01;
    /**
     * 右侧下部的提示文字
     */
    model11.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    //model11.m_collection_right.m_canUserInteract = @"0";
    model11.m_event_opt_code = @"选择行业";
    NSArray * array1 = @[@"航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空",@"航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空航空空航空航空航空航空",@"航空航空",@"空航空",@"航空航空航空",@"航空",@"航空航空",@"航空航空",@"航空航空航空",@"空",@"航空航航空",@"空航空",@"航空航空航空",@"航空"];

    for (NSString* temp in array1) {
        CWUBTextInfo * info = [[CWUBTextInfo alloc] initWithText:temp font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
        //info.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];

        CWUBView_TitleLeft_ButtonRight_Model *m1 = [[CWUBView_TitleLeft_ButtonRight_Model alloc] initWithTitle:info img:[[CWUBImageInfo alloc] initWithName:@"right" width:imgWidth1 height:imgWidth1]];
        m1.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];

        [model11.m_collection_right.m_array addObject:m1];
    }


    model11.m_img_right = [[CWUBImageInfo alloc] initWithName:@"right" width:10 height:10];

    model11.m_bottomLineInfo.m_color = [UIColor redColor];
    [data addObject:model11];


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
    model.m_bottomLineInfo.m_height = 1.;

    [data addObject:model];

    CWUBCell_MyFollow_MyBusiness_Model *model3 = [CWUBCell_MyFollow_MyBusiness_Model new];
    model3.m_type = CWUBCellType_MyFollow_MyBusiness;
    model3.m_bottomLineInfo.m_color = [UIColor blueColor];
    model3.m_bottomLineInfo.m_margin_left = 20.;
    model3.m_bottomLineInfo.m_margin_right = 20.;
    model3.m_bottomLineInfo.m_height = 10.;

    model3.m_title_left_top = [[CWUBTextInfo alloc] initWithText:@"标题左" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model3.m_title_right_top = [[CWUBTextInfo alloc] initWithText:@"标题右" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model3.m_title_right_top.m_margin_right = 40.;
    model3.m_title_left_top.m_margin_left = 40.;
    model3.m_img_left_bottom = [[CWUBImageInfo alloc] initWithName:@"left" width:15. height:15.];
    model3.m_img_right_bottom = [[CWUBImageInfo alloc] initWithName:@"left" width:15. height:15.];
    model3.m_title_left_bottom = [[CWUBTextInfo alloc] initWithText:@"我的关注我的关注我的关注我的关注我的关注我的关注" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model3.m_title_right_bottom = [[CWUBTextInfo alloc] initWithText:@"你的" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];

    [data addObject:model3];



    CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model * model28 = [CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model new];
    model28.m_type = CWUBCellType_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom;
    model28.m_img_left = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:75. height:75.];
    model28.m_img_left.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model28.m_img_left.m_defaultName = @"left";
    model28.m_img_left.m_margin_top = 40.;
    model28.m_img_left.m_margin_bottom = 40.;
    model28.m_title_rightTopLeft = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:22] color:CWUBDefineCreate_Color(39,39,39,1)];
    model28.m_title_rightTopRight = [[CWUBTextInfo alloc] initWithText:[NSString stringWithFormat:@" %@ ", @"职位"] font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(51,51,51,1)];
    model28.m_title_rightTopRight.m_numberOfLines = 1;
    model28.m_title_rightTopRight.m_margin_top = 10;
    model28.m_title_rightTopRight.m_margin_bottom = 10;
    model28.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model28.m_title_rightBottom.m_numberOfLines = 1;
    model28.m_title_rightBottom.m_margin_CenterY = 20.;
    model28.m_title_rightTopLeft.m_margin_CenterY = -15.;
    model28.m_bottomLineInfo.m_height = 10.;
    model28.m_bottomLineInfo.m_color = CWUBDefineCreate_Color(51,51,51,1);
    model28.m_bottomLineInfo.m_margin_right = 0.1;
    model28.m_bottomLineInfo.m_margin_left = 0.1;

    [data addObject:model28];

    CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model * model6 = [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model new];
    model6.m_type = CWUBCellType_ImgLeft_TitleRightTopTwo_TitleRightBottom;
    model6.m_img_left = [[CWUBImageInfo alloc] initWithName:@"FSL_II_我是个人" width:75. height:75.];
    model6.m_img_left.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model6.m_img_left.m_defaultName = @"left";
    model6.m_img_left.m_margin_top = 40.;
    model6.m_img_left.m_margin_bottom = 40.;
    model6.m_img_left.m_isCircle = YES;
    model6.m_title_rightTopLeft = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:22] color:CWUBDefineCreate_Color(39,39,39,1)];
    model6.m_title_rightTopRight = [[CWUBTextInfo alloc] initWithText:[NSString stringWithFormat:@" %@ ", @"职位"] font:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightTopRight.m_numberOfLines = 1;
    model6.m_title_rightTopRight.m_margin_top = 10;
    model6.m_title_rightTopRight.m_margin_bottom = 10;
    model6.m_title_rightTopRight.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightBottom.m_numberOfLines = 1;
    model6.m_title_rightBottom.m_margin_CenterY = 20.;
    model6.m_title_rightTopLeft.m_margin_CenterY = -15.;
    model6.m_bottomLineInfo.m_height = 10.;
    model6.m_bottomLineInfo.m_color = CWUBDefineCreate_Color(51,51,51,1);
    model6.m_bottomLineInfo.m_margin_right = 0.1;
    model6.m_bottomLineInfo.m_margin_left = 0.1;

    [data addObject:model6];


    CWUBCell_Company_One_Model * model7 = [CWUBCell_Company_One_Model new];
    model7.m_type = CWUBCellType_Company_One;
    model7.m_img_top = [[CWUBImageInfo alloc] initWithName:@"left" width:60. height:60.];
    model7.m_img_top.m_defaultName = @"left";
    model7.m_img_top.m_imgUrl = @"http://images.fangshiliu.com/fsl_api/2018-05-31/252924cf-d74c-439b-b95a-fb1650e051f2.png";
    model7.m_img_top.m_margin_top = 12.;
    model7.m_img_top.m_margin_bottom = 40.;

    model7.m_img_top.m_isCircle = YES;

    model7.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司公司公司公司公司公司公司公司公司公司公司公司" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:20] color:CWUBDefineCreate_Color(39,39,39,1)];
    model7.m_title_center.m_margin_CenterY = 5.;
    model7.m_title_center.m_margin_bottom = 10.;
    model7.m_title_center.m_numberOfLines = 1;

    model7.m_title_bottomLeft = [[CWUBTextInfo alloc] initWithText:@"HanhanHanhanHanhanHanhanHanhanHanhanHanhanHanhanHanhan" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_bottomLeft.m_numberOfLines = 1;
    //model7.m_title_bottomLeft.m_width_max = 20.;

    model7.m_back = [[CWUBImageInfo alloc] initWithName:@"companyback" width:0. height:0.];
    model7.m_back.m_margin_left = 10.;
    model7.m_back.m_margin_right = 10.;
    model7.m_back.m_color_background = [UIColor whiteColor];

    model7.m_title_bottomCenter = [[CWUBTextInfo alloc] initWithText:@" CEO " font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_title_bottomCenter.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model7.m_img_bottomRight = [[CWUBImageInfo alloc] initWithName:@"button" width:75. height:35.];;

    model7.m_title_bottomCenter.m_numberOfLines = 1;
    model7.m_title_bottomLeft.m_margin_bottom = 35.;
    model7.m_title_bottomLeft.m_margin_top = 10;




    [data addObject:model7];

    CWUBCell_Company_One_Model * model27 = [CWUBCell_Company_One_Model new];
    model27.m_type = CWUBCellType_Company_One;
    model27.m_img_top = [[CWUBImageInfo alloc] initWithName:@"我的首页_LOGO" width:60 height:60];
    model27.m_img_top.m_defaultName = @"我的首页_LOGO";

    model27.m_img_top.m_margin_top = 15;
    model27.m_img_top.m_margin_bottom = 40.;
    model27.m_img_top.m_isCircle = YES;
    model27.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司公司公司公司公司公司公司公司公司公司公司公司公司公司" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:20] color:CWUBDefineCreate_Color(39,39,39,1)];
    model27.m_title_center.m_margin_CenterY = -5.;
    model27.m_title_center.m_margin_bottom = 1.;
    model27.m_title_center.m_numberOfLines = 1;
    model27.m_title_bottomLeft = [[CWUBTextInfo alloc] initWithText:@"联系人联系人联系人联系人联系人联系人联系人联系人联系人联系人" font:[UIFont fontWithName:@"PingFangSC-Regular" size:15] color:CWUBDefineCreate_Color(51,51,51,1)];
    model27.m_title_bottomLeft.m_width_max = 100;
    model27.m_title_bottomLeft.m_margin_right = 10.;
    model27.m_title_bottomLeft.m_numberOfLines = 1;
    model27.m_back = [[CWUBImageInfo alloc] initWithName:@"companyback" width:0. height:0.];
    model27.m_back.m_margin_left = 10.;
    model27.m_back.m_margin_right = 10.;
    model27.m_back.m_margin_top = 30.+10;
    model27.m_back.m_color_background = [UIColor whiteColor];
    model27.m_back.m_height = 140.;
    model27.m_title_bottomCenter = [[CWUBTextInfo alloc] initWithText:[NSString stringWithFormat:@"%@", @"职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位"] font:[UIFont fontWithName:@"PingFangSC-Regular" size:15] color:CWUBDefineCreate_Color(51,51,51,1)];
    model27.m_img_bottomRight = [[CWUBImageInfo alloc] initWithName:@"button" width:75. height:35.];;
    model27.m_title_bottomCenter.m_margin_left = 10.;
    model27.m_title_bottomCenter.m_width_max = 100;
    model27.m_img_bottomRight.m_margin_left = 10.;
    model27.m_title_bottomCenter.m_numberOfLines = 1;
    model27.m_title_bottomLeft.m_margin_bottom = 35.;
    model27.m_title_bottomLeft.m_margin_top = 1;
    [data addObject:model27];

/*
    CWUBCell_ImgCenter_TitleCenter_Model *model2 = [CWUBCell_ImgCenter_TitleCenter_Model new];
    model2.m_type = CWUBCellType_ImgCenter_TitleCenter;
    model2.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[UIColor blackColor]];
    model2.m_image = [[CWUBImageInfo alloc] initWithName:@"right" width:15 height:15];
//    model2.m_title.m_margin_top = 24.;
//    model2.m_title.m_margin_bottom = 24.;
    model2.m_bottomLineInfo.m_color = [UIColor redColor];
    model2.m_bottomLineInfo.m_height = 10.;
    [data addObject:model2];

    CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model * model6 = [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model new];
    model6.m_type = CWUBCellType_ImgLeft_TitleRightTopTwo_TitleRightBottom;
    model6.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:75. height:75.];
    model6.m_img_left.m_margin_top = 40.;
    model6.m_img_left.m_margin_bottom = 40.;
    model6.m_img_left.m_isCircle = YES;
    model6.m_title_rightTopLeft = [[CWUBTextInfo alloc] initWithText:@"姓名姓名" font:[UIFont fontWithName:@"PingFangSC-Semibold" size:22] color:CWUBDefineCreate_Color(39,39,39,1)];
    model6.m_title_rightTopRight = [[CWUBTextInfo alloc] initWithText:@" CEO " font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightTopRight.m_numberOfLines = 1;
    model6.m_title_rightTopRight.m_cornerInfo = [CWUBCornerInfo interface_initWithRadius:4. width:0.5 color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_title_rightBottom = [[CWUBTextInfo alloc] initWithText:@"公司公司公司公司公司公司公司公司公司公司公司公司公司公司公司公司公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:CWUBDefineCreate_Color(51,51,51,1)];
    model6.m_color_backGround = [UIColor yellowColor];
    model6.m_title_rightBottom.m_numberOfLines = 1;
    model6.m_title_rightBottom.m_margin_CenterY = 18.;
    model6.m_title_rightTopLeft.m_margin_CenterY = -15.;
    model6.m_bottomLineInfo.m_height = 20.;
    model6.m_bottomLineInfo.m_color = [UIColor redColor];
    model6.m_bottomLineInfo.m_margin_right = 0.1;
    model6.m_bottomLineInfo.m_margin_left = 0.1;

    [data addObject:model6];




    CWUBCell_TitleRight_ButtonRight_Model * model = [CWUBCell_TitleRight_ButtonRight_Model new];
    model.m_type = CWUBCellType_TitleRight_ButtonRight;
    model.m_title = [[CWUBTextInfo alloc] initWithText:@"查看详情" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
    model.m_event_opt_code = @"查看详情";
    model.m_bottomLineInfo.m_color = [UIColor blueColor];
    [data addObject:model];



    CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model * model1 = [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model new];
    model1.m_type = CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight;
    model1.m_title_left = [[CWUBTextInfo alloc] initWithText:@"标题" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model1.m_title_right = [[CWUBTextInfo alloc] initWithText:@"内容内" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model1.m_bottomLineInfo.m_color = [UIColor redColor];
    model1.m_img_left = [[CWUBImageInfo alloc] initWithName:@"left" width:26. height:26.];
    model1.m_img_right = [[CWUBImageInfo alloc] initWithName:@"big" width:20. height:12.];
//    model1.m_margin_leftOrRight = 10.;
    //    model1.m_bottomLineType = CWUBBottomLineType_right;
    //    model1.m_title_left.m_labelTextVerticalType = CWUBLabelTextVerticalType_top;
    [data addObject:model1];



//    CWUBCell_WebImgStretch_Model * model2 = [CWUBCell_WebImgStretch_Model new];
//    model2.m_type = CWUBCellType_WebImgStretch;
//    model2.m_image = [[CWUBImageInfo alloc] initWithName:@"http://img.zcool.cn/community/0112a85874bd24a801219c7729e77d.jpg"  defaultName:@"back"];
//    model2.m_bottomLineInfo.m_color = [UIColor clearColor];
//    model2.m_image.m_margin_left=1;
//    model2.m_image.m_margin_right=1;
//    model2.m_image.m_margin_bottom=1;
//    model2.m_image.m_margin_top=1;
//
//    [data addObject:model2];



    CWUBCell_TitleLeft_ButtonRight_Model * model3 = [CWUBCell_TitleLeft_ButtonRight_Model new];
    model3.m_type = CWUBCellType_TitleLeft_ButtonRight;
    model3.m_title = [[CWUBTextInfo alloc] initWithText:@"标题" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model3.m_bottomLineInfo.m_color = [UIColor blueColor];
    model3.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];
    [data addObject:model3];

    CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model * model4 = [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model new];
    model4.m_type = CWUBCellType_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight;
    model4.m_title_center = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_bottom_left = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_title_bottom_right = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model4.m_bottomLineInfo.m_color = [UIColor blueColor];
    model4.m_img_top = [[CWUBImageInfo alloc] initWithName:@"button" width:90. height:40.];

    [data addObject:model4];



    CWUBCell_Passenger_Delete_Model * model5 = [CWUBCell_Passenger_Delete_Model new];
    model5.m_type = CWUBCellType_Passenger_Delete;
    model5.m_title_id = [[CWUBTextInfo alloc] initWithText:@"公司" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_info_id = [[CWUBTextInfo alloc] initWithText:@"姓名" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_info_name = [[CWUBTextInfo alloc] initWithText:@"职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_title_name = [[CWUBTextInfo alloc] initWithText:@"职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位职位" font:[UIFont fontWithName:@"PingFangSC-Regular" size:16.2] color:[CWUBDefine colorBlueDeep]];
    model5.m_bottomLineInfo.m_color = [UIColor blueColor];
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
        //_m_tableView.allowsSelection = NO;
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
/**
 * 一成不变，甚至可以放在基类中，不作显示声明
 */
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

/**
 * 一成不变，甚至可以放在基类中，不作显示声明
 */
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

        /**
         * 代理
         */
        if (model.m_type == CWUBCellType_TitleLeft_InputRight_TitleRightBottom) {
            CWUBCell_TitleLeft_InputRight_TitleRightBottom * cell1 = (CWUBCell_TitleLeft_InputRight_TitleRightBottom*)cell;
            cell1.delegate = self;
        }

        if (model.m_type == CWUBCellType_TitleLeft_CollectionRight_ImgRight) {
            CWUBCell_TitleLeft_CollectionRight_ImgRight * cell1 = (CWUBCell_TitleLeft_CollectionRight_ImgRight*)cell;
            cell1.delegate = self;
        }

        if (model.m_type == CWUBCellType_CollectionTop_TitleBottom) {
            CWUBCell_CollectionTop_TitleBottom * cell1 = (CWUBCell_CollectionTop_TitleBottom*)cell;
            cell1.delegate = self;
        }


        return cell;

    }else{

        return [UITableViewCell new];
    }

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    CWUBCellBase *cell = (CWUBCellBase *)[tableView cellForRowAtIndexPath:indexPath];
    NSString * code = [cell interface_get_event_opt_code];

    /**
     * cell点击事件
     */
    if ([code isEqualToString:@"查看详情"]) {

    }

    if ([code isEqualToString:@"感兴趣行业"]) {
        NSLog(@"感兴趣行业");
    }

    if ([code isEqualToString:@"选择行业"]) {
        NSLog(@"选择行业");
    }
}

- (void)CWUBCell_WebImgStretchDelegate_updateLayout{

    [self.m_tableView reloadData];
}

- (void)CWUBCell_MyFollow_MyBusinessDelegate_left{
    NSLog(@"CWUBCell_MyFollow_MyBusinessDelegate_left");
}
- (void)CWUBCell_MyFollow_MyBusinessDelegate_right{
    NSLog(@"CWUBCell_MyFollow_MyBusinessDelegate_right");
}
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate_constrains:(NSString*)str{
//    CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model* model = (CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model*)self.m_model.m_array_show[0][0];
//    model.m_input_right.m_text = str;
//    [self.m_tableView setNeedsLayout];
//    [self.m_tableView setNeedsDisplay];
//    [self.m_tableView reloadData];
}


/**
 * 返回选择的行，外面重设tableview的数据，然后刷新该界面
 */
- (void)CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate_constrains:(long)index{

    if (index<0) {
        return;
    }

    NSArray * array = self.m_model.m_array_show[0];

    for (CWUBModelBase *temp in array) {
        if (temp.m_type == CWUBCellType_TitleLeft_CollectionRight_ImgRight) {
            CWUBCell_TitleLeft_CollectionRight_ImgRight_Model* model = (CWUBCell_TitleLeft_CollectionRight_ImgRight_Model*)temp;
            [model.m_collection_right.m_array removeObjectAtIndex:index];
        }
    }

    [self.m_tableView reloadData];

    [self performSelector:@selector(func_reload) withObject:nil afterDelay:0.1];

}

- (void)func_reload{
    [self.m_tableView reloadData];
}

/**
 * 文本改变
 */
- (void)CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate_textChanged:(NSString*)str{

    NSLog(str);
}


/**
 * 返回选择的行，外面重设tableview的数据，然后刷新该界面
 */
- (void)CWUBCell_CollectionTop_TitleBottom_Delegate_constrains:(long)index{

    NSLog(@"11111111111111");
}

@end
