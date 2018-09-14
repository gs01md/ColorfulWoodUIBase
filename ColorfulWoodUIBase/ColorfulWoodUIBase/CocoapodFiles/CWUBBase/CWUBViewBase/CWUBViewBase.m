//
//  CWUBViewBase.m
//  ColorfulWoodUIBase
//
//  Created by 大新 on 2018/7/25.
//  Copyright © 2018年 ColorfulWood. All rights reserved.
//

#import "CWUBViewBase.h"
#import <MJRefresh/MJRefresh.h>

@interface CWUBViewBase()<
UITableViewDelegate,
UITableViewDataSource
>{

    BOOL m_isAddTableView;
}
@end

@implementation CWUBViewBase

- (instancetype) init{

    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
    }

    return self;
}

- (instancetype) initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }

    return self;
}
#pragma mark - model

- (CWUBModel*)m_model{

    if (!_m_model) {
        _m_model = [CWUBModel new];
    }

    return _m_model;
}

//- (FSLDefaultView *)m_defaultNoNetView{
//    if(!_m_defaultNoNetView){
//        _m_defaultNoNetView = [[FSLDefaultView alloc]init];
//        _m_defaultNoNetView.hidden = YES;
//        [_m_defaultNoNetView makeView:@"FSL_Default_无网络" withTitle:@"请检查您的网络"];
//    }
//    return _m_defaultNoNetView;
//}

- (void)interface_updateWithModel:(CWUBModel*)model{
    self.m_model = model;
    [self.m_tableView reloadData];
}

#pragma mark - 列表

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 */
- (void)interface_addTableView{

    if (m_isAddTableView == FALSE) {

        [self addSubview:self.m_tableView];

        m_isAddTableView = TRUE;
    }

    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self);
        make.left.equalTo(self);
        make.right.equalTo(self);
        make.bottom.equalTo(self);
    }];
}

/**
 * 添加列表
 * 如果有导航栏，则添加到导航栏下面
 */
- (void)interface_addTableViewFrom:(UIView*)view offset:(float)top{

    if (m_isAddTableView == FALSE) {

        [self addSubview:self.m_tableView];

        m_isAddTableView = TRUE;
    }
    
    [_m_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(view.mas_bottom).offset(top);
        make.left.equalTo(self);
        make.right.equalTo(self);
        make.bottom.equalTo(self);
    }];
}

- (UITableView*)m_tableView{

    if (!_m_tableView) {
        _m_tableView = [[UITableView alloc] initWithFrame:self.bounds];
        _m_tableView.tag = 2;
        _m_tableView.delegate = self;
        _m_tableView.dataSource = self;
        _m_tableView.allowsSelection = YES;
        _m_tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_m_tableView setBackgroundColor:[UIColor clearColor]];
        //设置cell的估计高度
        _m_tableView.estimatedRowHeight = 200;

        //iOS以后这句话是默认的，所以可以省略这句话
        _m_tableView.rowHeight = UITableViewAutomaticDimension;
        //        [_m_tableView setContentSize:CGSizeMake(kDeviceWidth, kDeviceHeight-(header_height)+1)];
    }

    return _m_tableView;
}


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
            //CWUBCell_TitleRight_ButtonRight * cell1 = (CWUBCell_TitleRight_ButtonRight*)cell;
            //cell1.delegate = self;
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

    if ([self.m_baseDelegate respondsToSelector:@selector(CWUBViewBaseDelegate_clickWithCode:)]) {

        [self.m_baseDelegate CWUBViewBaseDelegate_clickWithCode:code];
    }

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


#pragma mark - 设置table刷新
- (void)inner_setTableHeader{

    __weak __typeof(CWUBViewBase*) weakSelf = self;

    self.m_tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{

        CWUBViewBase* strongSelf = weakSelf;
        if (strongSelf) {

            if ([strongSelf.m_baseDelegate respondsToSelector:@selector(CWUBViewBaseDelegate_tableViewHeaderRefresh)]) {

                [strongSelf.m_baseDelegate CWUBViewBaseDelegate_tableViewHeaderRefresh];
            }
        }
    }];
}

- (void)inner_setTableFooter{

    __weak __typeof(CWUBViewBase*) weakSelf = self;

    self.m_tableView.mj_footer = [MJRefreshBackGifFooter footerWithRefreshingBlock:^{

        CWUBViewBase* strongSelf = weakSelf;
        if (strongSelf) {

            if ([strongSelf.m_baseDelegate respondsToSelector:@selector(CWUBViewBaseDelegate_tableViewFooterRefresh)]) {

                [strongSelf.m_baseDelegate CWUBViewBaseDelegate_tableViewFooterRefresh];
            }
        }

    }];
}

@end

