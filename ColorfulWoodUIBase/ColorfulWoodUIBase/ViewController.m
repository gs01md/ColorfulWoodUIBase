//
//  ViewController.m
//  TestUI
//
//  Created by 大新 on 2017/1/28.
//  Copyright © 2017年 ColorWood. All rights reserved.
//

#import "ViewController.h"
#import "ColorfulWoodUIBase.h"
#import <MJRefresh/MJRefresh.h>

@interface ViewController ()<
UITableViewDelegate,
UITableViewDataSource,
CWUBCell_WebImgStretchDelegate,
CWUBCell_MyFollow_MyBusinessDelegate,
CWUBCell_TitleLeft_InputRight_TitleRightBottom_Delegate,
CWUBCell_TitleLeft_CollectionRight_ImgRight_Delegate,
CWUBCell_CollectionTop_TitleBottom_Delegate,
CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate
>
@property(nonatomic, strong)CWUBModel * m_model;
@property(nonatomic, strong)CWUBModel * m_model_viewHead;
@property(nonatomic, strong)UITableView * m_tableView;


@property(nonatomic, strong)CWUBCell_Carousel_One *m_carousel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //self.automaticallyAdjustsScrollViewInsets = NO;

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
        [CWUBCell_TitleLeft_ButtonRight_Model tester_dataWithArray3:data];
    }

    [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model tester_dataWithArray3:data];
    [CWUBCell_ImgLeft_TitleRightThree_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_TitleRight_Model tester_dataWithArray:data];
    [CWUBCell_ImgCenter_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeftTwo_ImgCenter_TitleRightTwo_Model tester_dataWithArray:data];
    [CWUBCell_ImgLeft_TitleRightThree_Model tester_dataWithArray2:data];

    if (data.count>0) {
        [self.m_model_viewHead.m_array_show addObject:data];
    }

}

- (UIView*)func_view{

    return [CWUBViewOpt interface_addViewsTo:self.view topView:nil  withModel:self.m_model_viewHead];
}

- (void) func_getOne{

    NSMutableArray * data = [NSMutableArray new];

    [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_InfoLeft_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_TextViewRight_TitleRightBottom_Model tester_dataWithArray:data];
    [CWUBCell_ImgLeft_TitleTopLeft_TitleTopRight_TitleBottom_Model tester_dataWithArray:data];
    [CWUBCell_Order_Two_Model tester_dataWithArray:data];
    [CWUBCell_Server_Two_Model tester_dataWithArray:data];
    [CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Model tester_dataWithArray:data];
    [CWUBCell_Carousel_One_Model tester_dataWithArray:data];
    [CWUBCell_CollectionTop_TitleBottom_Model tester_dataWithArray:data];
    [CWUBCell_Carousel_Model tester_dataWithArray:data];
    [CWUBCell_Server_One_Model tester_dataWithArray:data];
    [CWUBCell_Order_One_Model tester_dataWithArray:data];
    [CWUBCell_SelectSex_Style1_Model tester_dataWithArray:data];
    [CWUBCell_TitleCenter_Model tester_dataWithArray:data];
    [CWUBCell_ImgBack_TitleFront_Model tester_dataWithArray:data];
    [CWUBCell_TitleTop_TitleBottom_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_InputRight_TitleRightBottom_ImgRight_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_InputRight_TitleRightBottom_Model tester_dataWithArray:data];
    [CWUBCell_SevenImg_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_CollectionRight_ImgRight_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_ButtonRight_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_ButtonRight_Model tester_dataWithArray3:data];
    [CWUBCell_MyFollow_MyBusiness_Model tester_dataWithArray:data];
    [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model tester_dataWithArray:data];
    [CWUBCell_Company_One_Model tester_dataWithArray:data];
    [CWUBCell_Company_One_Model tester_dataWithArray2:data];
    [CWUBCell_ImgCenter_TitleCenter_Model tester_dataWithArray:data];
    [CWUBCell_ImgLeft_TitleRightTopTwo_TitleRightBottom_Model tester_dataWithArray2:data];
    [CWUBCell_TitleRight_ButtonRight_Model tester_dataWithArray:data];
    [CWUBCell_WebImgStretch_Model tester_dataWithArray:data];
    [CWUBCell_TitleLeft_ButtonRight_Model tester_dataWithArray2:data];
    [CWUBCell_ImgTop_TitleCenter_TitleBottomLeft_TitleBottomRight_Model tester_dataWithArray:data];
    [CWUBCell_Passenger_Delete_Model tester_dataWithArray:data];


    

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
        _m_tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(event_refresh)];

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

        if (model.m_type == CWUBCellType_HorizontalScroll_TitleTop_TitleBottom_ImgRight) {
            CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight * cell1 = (CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight*)cell;
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

    if ([code isEqualToString:@"滚动轮播"]) {

        CWUBCell_Carousel_One * cell1 = (CWUBCell_Carousel_One*)cell;
        [cell1 interface_restartTimer];

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

    NSLog(@"%@", str);
}


/**
 * 返回选择的行，外面重设tableview的数据，然后刷新该界面
 */
- (void)CWUBCell_CollectionTop_TitleBottom_Delegate_constrains:(long)index{

    NSLog(@"11111111111111");
}

- (void)CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate_clickWithCode:(NSString*)code{

    NSLog(@"CWUBCell_HorizontalScroll_TitleTop_TitleBottom_ImgRight_Delegate_clickWithCode : %@",code);
}

#pragma mark - tableview 刷新

- (void)event_refresh{
    [self.m_tableView.mj_header endRefreshing];
    [self.m_tableView reloadData];
}

#pragma mark - 事件
/**
 * 通用点击CWUBLabelWithModel 事件
 */
- (void)CWUBLabel_clickEvent:(UITapGestureRecognizer*)tap{
    NSString * code = [CWUBLabelWithModel interface_getEventCode:tap];
    NSLog(@"%@",code);
}

@end
