//
//  ViewController.m
//  TestUI
//
//  Created by 大新 on 2017/1/28.
//  Copyright © 2017年 ColorWood. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import <ColorfulWoodUIBase/ColorfulWoodUIBase.h>

@interface ViewController ()<
UITableViewDelegate,
UITableViewDataSource
>
@property(nonatomic, strong)CWUBModel * m_model;
@property(nonatomic, strong)UITableView * m_tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.m_tableView];

    [self interface_transToViewData];
    [self.m_tableView reloadData];

}

- (CWUBModel*) m_dataView{

    if (!_m_model) {
        _m_model = [CWUBModel new];
    }
    return _m_model;
}

- (CWUBModel*)interface_transToViewData{

    [self.m_model.m_array_show removeAllObjects];

    [self func_getOne];

    return self.m_model;
}

- (void) func_getOne{

    NSMutableArray * data = [NSMutableArray new];

    CWUBCell_TitleRight_ButtonRight_Model * model = [CWUBCell_TitleRight_ButtonRight_Model new];
    model.m_type = CWUBCellType_TitleRight_ButtonRight;
    model.m_title = [[CWUBTextInfo alloc] initWithText:@"查看详情" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model.m_btnImg = [[CWUBImageInfo alloc] initWithName:@"Image" width:26. height:26.];
    model.m_event_opt_code = @"查看详情";
    model.m_color_bottomLine = [UIColor redColor];
    [data addObject:model];

    CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model * model1 = [CWUBCell_IconLeft_TitleLeft_TitleRight_IconRight_Model new];
    model1.m_type = CWUBCellType_IconLeft_TitleLeft_TitleRight_IconRight;
    model1.m_title_left = [[CWUBTextInfo alloc] initWithText:@"备注" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model1.m_title_right = [[CWUBTextInfo alloc] initWithText:@"水需要水需要水需要水水需要水需要水需要水水需要水需要水需要水水需要水需要水需要水" font:[CWUBDefine fontOptButton] color:[CWUBDefine colorBlueDeep]];
    model1.m_color_bottomLine = [UIColor redColor];
    model1.m_img_left = [[CWUBImageInfo alloc] initWithName:@"Image" width:26. height:26.];
    model1.m_img_right = [[CWUBImageInfo alloc] initWithName:@"Image" width:20. height:12.];
    model1.m_margin_leftOrRight = 10.;
//    model1.m_bottomLineType = CWUBBottomLineType_right;
//    model1.m_title_left.m_labelTextVerticalType = CWUBLabelTextVerticalType_top;
    [data addObject:model1];

    if (data.count>0) {
        [self.m_dataView.m_array_show addObject:data];
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
        if (model.m_type == CWUBCellType_TitleRight_ButtonRight) {
            CWUBCell_TitleRight_ButtonRight * cell1 = (CWUBCell_TitleRight_ButtonRight*)cell;
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



@end
